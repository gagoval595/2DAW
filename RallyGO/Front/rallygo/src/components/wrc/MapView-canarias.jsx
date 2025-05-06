import React from "react";
import { MapContainer, TileLayer } from "react-leaflet";
import SegmentRuta from "../SegmentRuta-canarias";
import Markers from "../Markers-canarias";
import data from "../principioFin.json";
import 'leaflet/dist/leaflet.css';

export default function MapView() {
  const center = [27.972242873491282, -15.574734385799008];
  const items = Array.isArray(data?.principioFin) ? data.principioFin : [];

  const midpointsMap = {
    "SS1+4": [
      [27.964032, -15.550646]
    ]
  };

  const segments = items
    .filter((p) => p.name.startsWith("Inicio "))
    .map((inicio) => {
      const tramo = inicio.name.replace("Inicio ", "");
      const fin = items.find((p) => p.name === `Fin ${tramo}`);
      if (!fin) return null;

      const waypoints = [inicio.coordenadas];
      if (midpointsMap[tramo]) waypoints.push(...midpointsMap[tramo]);
      waypoints.push(fin.coordenadas);

      return { tramo, waypoints };
    })
    .filter(Boolean);

  return (
    <MapContainer center={center} zoom={12} style={{ height: "100vh", width: "100%" }}>
      <TileLayer
        url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        attribution="&copy; OpenStreetMap"
      />

      {segments.map((seg, i) => (
        <SegmentRuta key={i} waypoints={seg.waypoints} color={"blue"} />
      ))}

      <Markers principioFin={items} />
    </MapContainer>
  );
}
