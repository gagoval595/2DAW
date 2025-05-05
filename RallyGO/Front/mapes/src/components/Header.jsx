import React from "react";
import { Container, Nav, Navbar, Row, Col } from "react-bootstrap";
import { Link } from "react-router-dom";
import logo from "../img/LogoRallyGO.png";


function Header() {
  return (
      <div className="container-fluid p-0 " >
        <div className="row d-flex align-items-center justify-content-center">
          <div className="d-flex justify-content-between align-items-center">
          <Navbar expand="md" className="navbar-custom ">
            <Navbar.Brand as={Link} to="/" className="d-lg-none d-md-block">
              <img src={logo} alt="Logo RallyGO" className="logo" />
            </Navbar.Brand>
            <Navbar.Toggle aria-controls="navbarScroll" />
            <Navbar.Collapse id="navbarScroll">
              <Nav className="d-flex align-items-center " navbarScroll>
                <Nav.Link as={Link} to="/" className="d-none d-lg-inline-flex">
                  Home
                </Nav.Link>
                <Nav.Link as={Link} to="/calendario" className="d-none d-lg-inline-flex">
                  Calendario
                </Nav.Link>
                <Nav.Link as={Link} to="/equipos" className="d-none d-lg-inline-flex">
                  Equipos
                </Nav.Link>
                <Navbar.Brand as={Link} to="/" className="d-none d-lg-inline-flex">
                  <img src={logo} alt="Logo RallyGO" className="logo" />
                </Navbar.Brand>
                <Nav.Link as={Link} to="/fotos" className="d-none d-lg-inline-flex">
                  Galeria
                </Nav.Link>
                <Nav.Link as={Link} to="/servicios" className="d-none d-lg-inline-flex">
                  Servicios
                </Nav.Link>
                <Nav.Link as={Link} to="/contacto" className="d-none d-lg-inline-flex">
                  Contacto
                </Nav.Link>
              </Nav>
            </Navbar.Collapse>
          </Navbar>
          </div>
        </div>
      </div>

  );
}

export default Header;
