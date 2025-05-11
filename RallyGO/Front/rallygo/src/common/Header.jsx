import { Container, Nav, Navbar } from "react-bootstrap";
import "../App.css";
import logo from "../components/img/LogoRallyGO.png";
function Header() {
  return (
    
    <Navbar expand="md" className="navbar-light p-0 border-bottom border-dark border-1">
      <Container className="d-flex justify-content-center ">
        <Navbar.Toggle aria-controls="navbarScroll" />
        <Navbar.Collapse id="navbarScroll">
          <Nav className="my-lg-0 d-flex align-items-center" navbarScroll>
            <img src={logo} className="logo d-md-none d-sm-block " alt="Logo RallyGO" />
            
            <Nav.Link href="/">Home</Nav.Link>
            <Nav.Link href="/equipos">Calendario</Nav.Link>
            <Nav.Link href="/equipos">Equipos</Nav.Link>
            <Navbar.Brand href="/">
              <img src={logo} className="logo d-none d-md-block ms-3" alt="Logo RallyGO" />
            </Navbar.Brand>

            <Nav.Link href="/galeria">Galeria</Nav.Link>
            <Nav.Link href="/servicios">Servicios</Nav.Link>
            <Nav.Link href="/contacto">Contacto</Nav.Link>
          </Nav>
        </Navbar.Collapse>
      </Container>
    </Navbar>
  );
}

export default Header;
