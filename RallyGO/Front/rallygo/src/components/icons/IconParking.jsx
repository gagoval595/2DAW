import L from "leaflet";

const IconParking = L.icon({
    iconUrl: require('../../assets/parking.png'),
    iconAnchor: null, 
    shadowUrl: null,
    shadowSize: null,
    shadowAnchor: null,
    iconSize: [30, 30],
    className: "leaflet-parking-icon",
})

export default IconParking;
