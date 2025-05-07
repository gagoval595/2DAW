import L from "leaflet";
import "leaflet/dist/leaflet.css";

const IconFin = new L.Icon({
  iconUrl: require("../assets/camping.png"),
  iconSize: [25, 25]
});

const Markers = ({ principioFin }) => {
  if (!Array.isArray(principioFin) || principioFin.length === 0) {
    console.error("principioFin no es un array válido o está vacío");
    return null;
  }

  const markers = principioFin.map((marker, index) => {
    if (!Array.isArray(marker?.coordenadas) || marker?.coordenadas.length !== 2) {
      console.error(`Las coordenadas del marcador ${marker?.name} no son válidas`);
      return null;
    }
  });

  return markers;
};

export default Markers;
