import React from "react";
import MapView from "./components/MapView";
import "leaflet/dist/leaflet.css"; 
import 'bootstrap/dist/css/bootstrap.min.css';
import Header from "./components/Header";


function App() {
  return (
    <div className="App">
      <Header />
      <h1>Mapa de RallyGO</h1>
      <MapView />
    </div>
  );
}

export default App;
