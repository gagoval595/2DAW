import React from "react";
import { Marker, Popup } from "react-leaflet";
import IconFin from "../icons/IconFin";

const Markers = ({ principioFin }) => {
  if (!Array.isArray(principioFin) || principioFin.length === 0) {
    console.error("principioFin no és un array vàlid o està buit");
    return null;
  }

  const markers = principioFin.map((marker, index) => {
    if (!Array.isArray(marker?.coordenadas) || marker?.coordenadas.length !== 2) {
      console.error(`Les coordenades per al marcador ${marker?.name} no són vàlides`);
      return null;
    }

    return (
      <Marker key={index} position={marker.coordenadas} icon={IconFin}>
        <Popup>{marker.name}</Popup>
      </Marker>
    );
  });

  return markers;
};

export default Markers;
