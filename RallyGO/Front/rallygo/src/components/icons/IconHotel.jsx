import L from "leaflet";

const IconHotel = L.icon({
    iconUrl: require('../../assets/hotel.png'),
    iconAnchor: null, 
    shadowUrl: null,
    shadowSize: null,
    shadowAnchor: null,
    iconSize: [30, 30],
    className: "leaflet-hotel-icon",
})

export default IconHotel;
