import React, { useState, useEffect } from 'react';
import { MapContainer, TileLayer, Marker, useMapEvents } from 'react-leaflet';
import 'leaflet/dist/leaflet.css';
import L from 'leaflet';

delete L.Icon.Default.prototype._getIconUrl;
L.Icon.Default.mergeOptions({
  iconRetinaUrl: 'https://unpkg.com/leaflet@1.7.1/dist/images/marker-icon-2x.png',
  iconUrl: 'https://unpkg.com/leaflet@1.7.1/dist/images/marker-icon.png',
  shadowUrl: 'https://unpkg.com/leaflet@1.7.1/dist/images/marker-shadow.png',
});

function LocationMarker({ position, setPosition }) {
  useMapEvents({
    click: (e) => {
      setPosition([e.latlng.lat, e.latlng.lng]);
    },
  });

  return position[0] !== 0 ? <Marker position={position} /> : null;
}

function MapLocationPicker({ onLocationSelect, initialPosition = [38.845329725344044, -0.11281582444679437] }) {
  const [position, setPosition] = useState(initialPosition);
  const [map, setMap] = useState(null);
  
  useEffect(() => {
    setPosition(initialPosition);
    if (map) {
      map.setView(initialPosition, 13);
    }
  }, [initialPosition, map]);
  
  useEffect(() => {
    if (position) {
      onLocationSelect(position[0], position[1]);
    }
  }, [position, onLocationSelect]);

  useEffect(() => {
    if (map) {
      setTimeout(() => {
        map.invalidateSize();
      }, 100);
    }
  }, [map]);

  return (
    <div className="map-container" style={{ height: '350px', width: '100%', marginBottom: '20px', border: '1px solid #ddd', borderRadius: '4px' }}>
      <MapContainer 
        center={position} 
        zoom={13} 
        scrollWheelZoom={true}
        style={{ height: '100%', width: '100%' }}
        whenCreated={setMap}
      >
        <TileLayer
          attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
          url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
        />
        <LocationMarker position={position} setPosition={setPosition} />
      </MapContainer>
      <p className="mt-2 text-muted">
        <small>Haz clic en el mapa para seleccionar la ubicación exacta</small>
      </p>
    </div>
  );
}

export default MapLocationPicker;