import { useEffect } from "react";
import { useMap } from "react-leaflet";
import L from "leaflet";
import "leaflet-polylinedecorator";

export default function SegmentRuta({ waypoints, color = "red" }) {
  const map = useMap();

  useEffect(() => {
    if (!map || !waypoints?.length) return;
    let lineLayer, decorator;
    let canceled = false;

    // 1) Montamos la URL de OSRM con todos los puntos (lng,lat;...)
    const coordsStr = waypoints
      .map(([lat, lng]) => `${lng},${lat}`)
      .join(";");
    const url = `https://router.project-osrm.org/route/v1/driving/${coordsStr}?overview=full&geometries=geojson`;

    // 2) Llamada a OSRM
    fetch(url)
      .then((res) => res.json())
      .then((json) => {
        if (canceled || !json.routes?.length) return;
        // convertimos [lng,lat] → [lat,lng]
        const latlngs = json.routes[0].geometry.coordinates.map(
          ([lng, lat]) => [lat, lng]
        );

        // 3) Dibujamos la línea base
        lineLayer = L.polyline(latlngs, { color, weight: 4 }).addTo(map);

        // 4) Decoramos con flechas
        decorator = L.polylineDecorator(lineLayer, {
          patterns: [
            {
              offset: "10%",
              repeat: "15%",
              symbol: L.Symbol.arrowHead({
                pixelSize: 8,
                pathOptions: { fillOpacity: 1, weight: 0, color },
              }),
            },
          ],
        }).addTo(map);
      })
      .catch(console.error);

    // 5) Cleanup al desmontar
    return () => {
      canceled = true;
      if (lineLayer) map.removeLayer(lineLayer);
      if (decorator) map.removeLayer(decorator);
    };
  }, [map, waypoints, color]);

  return null;
}
