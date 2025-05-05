import "./App.css";
import "leaflet/dist/leaflet.css";
import "leaflet-polylinedecorator";
import MapView from "./components/MapView";
import { Container, Row, Col, Navbar, Nav } from "react-bootstrap";

function App() {
  return (
    <>
      <div className="container-fluid">
        <div className="row">
          <h1>Mapes</h1>
          <p>
            Mapes is a web application that allows you to visualize and interact
            with maps.
          </p>
        </div>
        <div className="row">
         
            <h2>Map</h2>
            <p>This is a map component.</p>
            <div className="container-fluid">
              <div className="row">
                <div className="col-1"></div>
                <div className="col-10">
                  <MapView />
                </div>
                <div className="col-1"></div>
              </div>
            </div>
          </div>
        </div>
      
    </>
  );
}

export default App;
