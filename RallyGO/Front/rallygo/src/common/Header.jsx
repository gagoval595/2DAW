import { Container, Nav, Navbar, Button } from "react-bootstrap";
import { Link } from "react-router-dom";
import "../App.css";
import logo from "../components/img/LogoRallyGO.png";
import { useAuth0 } from "@auth0/auth0-react";

function Header() {
  const { isAuthenticated, loginWithRedirect, logout, user } = useAuth0();

  return (
    <Navbar expand="md" className="navbar-light p-0 border-bottom border-dark border-1 nav">
      <div className="container-fluid">
        {/* sm */}
        <Navbar.Brand as={Link} to="/" className="d-md-none">
          <img src={logo} className="logo" alt="Logo RallyGO" />
        </Navbar.Brand>
        
        {/* btn sm */}
        <div className="d-md-none ms-auto me-2">
          {isAuthenticated ? (
            <Button
              className="btn-blau d-flex align-items-center"
              size="sm"
              onClick={() => logout({ returnTo: window.location.origin })}
            >
              <i className="bi bi-box-arrow-right me-1"></i>
              Salir
            </Button>
          ) : (
            <Button
              className="btn-blau d-flex align-items-center"
              size="sm"
              onClick={() => loginWithRedirect({ redirectUri: window.location.origin + '/admin/servicios' })}
            >
              <i className="bi bi-shield-lock me-1"></i>
              Admin
            </Button>
          )}
        </div>
        
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
              
              
              {isAuthenticated && (
                <Nav.Link as={Link} to="/admin/servicios" className="text-danger fw-bold">
                  Admin
                </Nav.Link>
              )}
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
              
              {isAuthenticated && (
                <Nav.Link as={Link} to="/admin/servicios" className="text-danger">
                  <i className="bi bi-gear-fill icones-link"></i>
                </Nav.Link>
              )}
            </div>

            {/* sm */}
            <div className="d-md-none">
              <Nav.Link as={Link} to="/" className="ps-3">Home</Nav.Link>
              <Nav.Link as={Link} to="/calendario" className="ps-3">Calendario</Nav.Link>
              <Nav.Link as={Link} to="/equipos" className="ps-3">Equipos</Nav.Link>
              <Nav.Link as={Link} to="/galeria" className="ps-3">Galeria</Nav.Link>
              <Nav.Link as={Link} to="/servicios" className="ps-3">Servicios</Nav.Link>
              <Nav.Link as={Link} to="/contacto" className="ps-3">Contacto</Nav.Link>
              
              {isAuthenticated && (
                <Nav.Link as={Link} to="/admin/servicios" className="ps-3 text-danger fw-bold">
                  Administración
                </Nav.Link>
              )}
            </div>

            {/* login/logout sm */}
            <Nav.Item className="ms-auto d-none d-md-block">
              <div className="d-flex align-items-center h-100 justify-content-center">
                {isAuthenticated ? (
                  <div className="d-flex align-items-center">
                    <span className="me-2">
                      {user?.name || user?.email}
                    </span>
                    <Button
                      className="btn-blau d-flex align-items-center"
                      size="sm"
                      onClick={() => logout({ returnTo: window.location.origin })}
                    >
                      <i className="bi bi-box-arrow-right me-1"></i>
                      Cerrar sesión
                    </Button>
                  </div>
                ) : (
                  <Button
                    className="btn-blau d-flex align-items-center"
                    size="sm"
                    onClick={() => loginWithRedirect({ redirectUri: window.location.origin + '/admin/servicios' })}
                  >
                    <i className="bi bi-shield-lock me-1"></i>
                    Admin
                  </Button>
                )}
              </div>
            </Nav.Item>
          </Nav>
        </Navbar.Collapse>
      </div>
    </Navbar>
  );
}

export default Header;
