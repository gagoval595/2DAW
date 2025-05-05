import React from "react";
import { Marker, Popup } from "react-leaflet";
import IconFin from "../icons/IconFin";

const Markers = ({ principioFin }) => {  
  if (!principioFin) {
    console.error('principioFin is undefined');
    return null;
  }

  const markers = principioFin.map((marker, index) => (
    <Marker key={index} position={marker.coordenadas} icon={IconFin}>
      <Popup>{marker.name}</Popup>
    </Marker>
  ));
  
  return markers;
};

export default Markers;
