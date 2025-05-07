import React from "react";

// import react-leaflet
import "leaflet/dist/leaflet.css";
import "leaflet-routing-machine/dist/leaflet-routing-machine.css";

//import bootstrap
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle.min.js";
import "bootstrap-icons/font/bootstrap-icons.css";

// import mapa
import MapView from "./components/mapas/MapView.jsx";

function App() {
  return (
    <>
      <div className="container-fluid">
        <div className="row">
          <div className="col-12 text-center mt-3 mb-3">
            <h1>Mapa de Canarias</h1>
            <MapView />
          </div>
        </div>
      </div>
    </>
  );
}

export default App;
