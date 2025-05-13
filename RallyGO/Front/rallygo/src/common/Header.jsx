import { Container, Nav, Navbar } from "react-bootstrap";
import { Link } from "react-router-dom";
import "../App.css";
import logo from "../components/img/LogoRallyGO.png";

function Header() {
  return (
    <Navbar expand="md" className="navbar-light p-0 border-bottom border-dark border-1">
      <Container className="d-flex justify-content-center">
        <Navbar.Toggle aria-controls="navbarScroll" />
        <Navbar.Collapse id="navbarScroll">
          <Nav className="my-lg-0 d-flex align-items-center" navbarScroll>
            <img src={logo} className="logo d-md-none d-sm-block" alt="Logo RallyGO" />
            
            <Nav.Link as={Link} to="/">Home</Nav.Link>
            <Nav.Link as={Link} to="/calendario">Calendario</Nav.Link>
            <Nav.Link as={Link} to="/equipos">Equipos</Nav.Link>
            <Navbar.Brand as={Link} to="/">
              <img src={logo} className="logo d-none d-md-block ms-3" alt="Logo RallyGO" />
            </Navbar.Brand>

            <Nav.Link as={Link} to="/galeria">Galeria</Nav.Link>
            <Nav.Link as={Link} to="/servicios">Servicios</Nav.Link>
            <Nav.Link as={Link} to="/contacto">Contacto</Nav.Link>
          </Nav>
        </Navbar.Collapse>
      </Container>
    </Navbar>
  );
}

export default Header;
