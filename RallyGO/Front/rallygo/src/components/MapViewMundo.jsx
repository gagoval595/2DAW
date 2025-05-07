import React from "react";
import { MapContainer, TileLayer } from "react-leaflet";
import Markers from "./MarkersMundo";
import data from "./principioFin.json";
import 'leaflet/dist/leaflet.css';

export default function MapViewMundo() {
  const center = [37.242348, -15.667853];

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
