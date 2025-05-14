import { Container, Nav, Navbar } from "react-bootstrap";
import { Link } from "react-router-dom";
import "../App.css";
import logo from "../components/img/LogoRallyGO.png";

function Header() {
  return (
    <Navbar expand="md" className="navbar-light p-0 border-bottom border-dark border-1 nav">
      <div className="container-fluid">
        {/* sm */}
        <Navbar.Brand as={Link} to="/" className="d-md-none">
          <img src={logo} className="logo" alt="Logo RallyGO" />
        </Navbar.Brand>
        <Navbar.Toggle aria-controls="navbarScroll" className="d-md-none" />

        <Navbar.Collapse id="navbarScroll">
          <Nav className="w-100">
            {/* lg */}
            <div className="d-none d-lg-flex w-100 justify-content-center align-items-center">
              <Nav.Link as={Link} to="/">Home</Nav.Link>
              <Nav.Link as={Link} to="/calendario">Calendario</Nav.Link>
              <Nav.Link as={Link} to="/equipos">Equipos</Nav.Link>
              <Navbar.Brand as={Link} to="/" className="mx-3">
                <img src={logo} className="logo" alt="Logo RallyGO" />
              </Navbar.Brand>
              <Nav.Link as={Link} to="/galeria">Galeria</Nav.Link>
              <Nav.Link as={Link} to="/servicios">Servicios</Nav.Link>
              <Nav.Link as={Link} to="/contacto">Contacto</Nav.Link>
            </div>

            {/* md */}
            <div className="d-none d-md-flex d-lg-none w-100 justify-content-center align-items-center">
              <Nav.Link as={Link} to="/"><i className="bi bi-house-fill icones-link"></i></Nav.Link>
              <Nav.Link as={Link} to="/calendario"><i className="bi bi-calendar icones-link"></i></Nav.Link>
              <Nav.Link as={Link} to="/equipos"><i className="bi bi-car-front-fill icones-link"></i></Nav.Link>
              <Navbar.Brand as={Link} to="/" className="mx-3">
                <img src={logo} className="logo" alt="Logo RallyGO" />
              </Navbar.Brand>
              <Nav.Link as={Link} to="/galeria"><i className="bi bi-images icones-link"></i></Nav.Link>
              <Nav.Link as={Link} to="/servicios"><i className="bi bi-luggage icones-link"></i></Nav.Link>
              <Nav.Link as={Link} to="/contacto"><i className="bi bi-telephone-fill icones-link"></i></Nav.Link>
            </div>

            {/* sm */}
            <div className="d-md-none">
              <Nav.Link as={Link} to="/" className="ps-3">Home</Nav.Link>
              <Nav.Link as={Link} to="/calendario" className="ps-3">Calendario</Nav.Link>
              <Nav.Link as={Link} to="/equipos" className="ps-3">Equipos</Nav.Link>
              <Nav.Link as={Link} to="/galeria" className="ps-3">Galeria</Nav.Link>
              <Nav.Link as={Link} to="/servicios" className="ps-3">Servicios</Nav.Link>
              <Nav.Link as={Link} to="/contacto" className="ps-3">Contacto</Nav.Link>
            </div>
          </Nav>
        </Navbar.Collapse>
      </div>
    </Navbar>
  );
}

export default Header;
