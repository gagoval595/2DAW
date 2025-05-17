import React, { useState, useEffect } from 'react';
import { MapContainer, TileLayer, Marker, useMapEvents } from 'react-leaflet';
import 'leaflet/dist/leaflet.css';
import L from 'leaflet';

// Corregir el problema de los iconos de Leaflet en React
delete L.Icon.Default.prototype._getIconUrl;
L.Icon.Default.mergeOptions({
  iconRetinaUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/images/marker-icon-2x.png',
  iconUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/images/marker-icon.png',
  shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/images/marker-shadow.png',
});

// Componente para manejar eventos del mapa
function LocationMarker({ position, setPosition }) {
  const map = useMapEvents({
    click(e) {
      setPosition([e.latlng.lat, e.latlng.lng]);
    }
  });

  useEffect(() => {
    if (position[0] !== 0 && position[1] !== 0) {
      map.flyTo(position, map.getZoom());
    }
  }, [position, map]);

  return position[0] !== 0 ? 
    <Marker position={position} /> : null;
}

function MapLocationPicker({ onLocationSelect, initialPosition = [40.416775, -3.70379] }) {
  const [position, setPosition] = useState(initialPosition);
  
  // Actualizar coordenadas cuando cambie la posición
  useEffect(() => {
    if (position) {
      onLocationSelect(position[0], position[1]);
    }
  }, [position, onLocationSelect]);

  return (
    <div className="map-container" style={{ height: '400px', width: '100%', marginBottom: '20px' }}>
      <MapContainer 
        center={position} 
        zoom={13} 
        scrollWheelZoom={true}
        style={{ height: '100%', width: '100%' }}
      >
        <TileLayer
          attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
          url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        />
        <LocationMarker position={position} setPosition={setPosition} />
      </MapContainer>
      <p className="mt-2 text-muted">
        <small>Haz clic en el mapa para seleccionar la ubicación</small>
      </p>
    </div>
  );
}

export default MapLocationPicker;