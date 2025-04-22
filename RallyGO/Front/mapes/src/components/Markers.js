import React from "react";
import { Marker, Popup } from "react-leaflet";
import IconFin from "./icons/IconFin";

export default function Markers() {
  return (
    <Marker position={[27.986261, -15.568772]} icon={IconFin}>
      <Popup>Fin del tramo</Popup>
    </Marker>
  );
}
