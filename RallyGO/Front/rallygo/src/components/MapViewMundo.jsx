import React, { useState, useEffect } from "react";
import { MapContainer, TileLayer, Marker, Popup } from "react-leaflet";
import { apiService } from '../services/apiService';
import 'leaflet/dist/leaflet.css';
import L from 'leaflet';

// Solución al problema de los iconos (chatgptada de manual)
delete L.Icon.Default.prototype._getIconUrl;
L.Icon.Default.mergeOptions({
    iconRetinaUrl: require('leaflet/dist/images/marker-icon-2x.png'),
    iconUrl: require('leaflet/dist/images/marker-icon.png'),
    shadowUrl: require('leaflet/dist/images/marker-shadow.png'),
});

const wrcIcon = new L.Icon({
    iconUrl: require('../assets/wrc.png'),
    iconSize: [35, 35],
    iconAnchor: [15, 15],
    popupAnchor: [0, -15]
});

const scerIcon = new L.Icon({
    iconUrl: require('../assets/scer.jpg'),
    iconSize: [35, 35],
    iconAnchor: [15, 15],
    popupAnchor: [0, -15]
});

export default function MapViewMundo() {
    const [etapas, setEtapas] = useState([]);
    const center = [40.416775, -3.703790];

    useEffect(() => {
        const fetchEtapas = async () => {
            try {
                const response = await apiService.getEtapas();
                console.log(response);
                setEtapas(response.data.etapas || []);
            } catch (error) {
                console.error('perfa ves:', error);
                setEtapas([]);
            }
        };

        fetchEtapas();
    }, []);

    const getIcon = (campeonatoId) => {
        return campeonatoId === 1 ? wrcIcon : scerIcon;
    };

    if (!Array.isArray(etapas)) {
        console.error('no es un array nen', etapas);
    }

    return (
        <div style={{ position: 'relative' }}>
            <MapContainer center={center} zoom={5} className="mapa">
                <TileLayer
                    url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
                    attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
                />
                {etapas.map((etapa) => (
                    <Marker
                        key={etapa.id}
                        position={[etapa.latitud, etapa.longitud]}
                        icon={getIcon(etapa.campeonato_id)}
                    >
                        <Popup>
                            <div className="popup-content">
                                <h5>{etapa.nombre}</h5>
                                <p><strong>Fecha:</strong> {etapa.fecha}</p>
                                <p><strong>Ubicación:</strong> {etapa.pais}</p>
                                <p><strong>Campeonato:</strong> {etapa.campeonato?.tipo}</p>
                            </div>
                        </Popup>
                    </Marker>
                ))}
            </MapContainer>
            
            <div className="leyenda">
                <h6 className="mb-2">Campeonatos</h6>
                <div className="legend-item">
                    <img src={require('../assets/wrc.png')} alt="WRC" className="legend-icon" />
                    <span className="legend-text">WRC</span>
                </div>
                <div className="legend-item">
                    <img src={require('../assets/scer.jpg')} alt="SCER" className="legend-icon" />
                    <span className="legend-text">S-CER</span>
                </div>
            </div>
        </div>
    );
}
