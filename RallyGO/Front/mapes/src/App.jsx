import "./App.css";

// Leaflet
import "leaflet/dist/leaflet.css";
import "leaflet-polylinedecorator";
import MapView from "./components/MapView";

// Bootstrap
import { Container, Row, Col } from "react-bootstrap";
import "bootstrap/dist/css/bootstrap.min.css";

// React Router
import { BrowserRouter as Router } from "react-router-dom";

// Components
import Header from "./components/Header";

function App() {
  return (
    <Router>
      <Container fluid>
        <Row>
          <Col className="col-12">
            <Header />
          </Col>
        </Row>
      </Container>
    </Router>
  );
}

export default App;
