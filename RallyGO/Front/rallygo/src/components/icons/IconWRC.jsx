import L from "leaflet";

const IconWRC = L.icon({
    iconUrl: require('../../assets/wrc.png'),
    iconAnchor: null, 
    shadowUrl: null,
    shadowSize: null,
    shadowAnchor: null,
    iconSize: [30, 30],
    className: "leaflet-wrc-icon",
})

export default IconWRC;
