import L from "leaflet";

const IconLocation = L.icon({
    iconUrl: require('../../assets/localizar.png'),
    iconRetinaUrl: require('../../assets/localizar.png'),
    iconAnchor: null, 
    shadowUrl: null,
    shadowSize: null,
    shadowAnchor: null,
    iconSize: [30, 30],
    className: "leaflet-localize-icon",
})

export default IconLocation;
