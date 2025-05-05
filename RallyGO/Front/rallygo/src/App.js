import React from "react";
import MapView from "./components/MapView";
import "leaflet/dist/leaflet.css"; 

function App() {
  return (
    <div className="App">
      <h1>Mapa de RallyGO</h1>
      <MapView />
    </div>
  );
}

export default App;
