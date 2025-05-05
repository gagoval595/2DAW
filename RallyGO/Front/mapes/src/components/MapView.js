import React from "react";
import { MapContainer, TileLayer } from "react-leaflet";
import SegmentRuta from "./SegmentRuta";
import Markers from "./Markers";
import data from "../coord/wrc-canarias/principioFin.json";

export default function MapView() {
  const center = [27.95, -15.75];
  const items = data.principioFin;

  const midpointsMap = {
    "SS1+4": [
      [27.964032,-15.550646]
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
        <SegmentRuta
          key={i}
          waypoints={seg.waypoints}
          color={"red"}
        />
      ))}

      <Markers principioFin={items} />
    </MapContainer>
  );
}
