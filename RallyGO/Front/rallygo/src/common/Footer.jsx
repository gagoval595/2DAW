import React from 'react';
import { Link } from 'react-router-dom';
import { NavDropdown } from 'react-bootstrap';
import logo from "../components/img/icona.jpg";

const Footer = () => {
    return (
        <footer>
            <div className='container-fluid bg-blauOscur text-white py-4'>
                <div className='row'>
                    <div className='col-lg-4 col-md-6 col-sm-12 d-flex justify-content-center align-items-center'>
                        <Link to="/">
                            <img src={logo} alt='Logo' className='img-fluid logoFooter' />
                        </Link>
                    </div>
                    <div className='col-lg-4 col-md-6 col-sm-12 justify-content-center align-items-center text-center my-sm-2'>
                        <h5>PÁGINAS</h5>
                        <ul className="footer-links">
                            <li><Link to="/" className='linksFooter'>Home</Link></li>
                            <li><Link to="/calendario" className='linksFooter'>Calendario</Link></li>
                            <li><Link to="/equipos" className='linksFooter'>Equipos</Link></li>
                            <NavDropdown  title="Más páginas" className='linksFooter navFooter'>
                                <NavDropdown.Item as={Link} to="/galeria">Galeria</NavDropdown.Item>
                                <NavDropdown.Item as={Link} to="/servicios">Servicios</NavDropdown.Item>
                                <NavDropdown.Item as={Link} to="/contacto">Contacto</NavDropdown.Item>
                            </NavDropdown>
                        </ul>
                    </div>
                    <div className='col-lg-4 col-sm-12 justify-content-center align-items-center text-center mt-md-2'>
                        <h5>SOBRE NOSOTROS</h5>
                        <ul className="footer-links pt-3">
                            <li><Link to="/terminos-condiciones" className='linksFooter'>Términos y Condiciones</Link></li>
                            <li><Link to="/politica-privacidad" className='linksFooter'>Política de Privacidad</Link></li>
                            <li><Link to="/politica-cookies" className='linksFooter'>Política de Cookies</Link></li>
                        </ul>
                    
                        <a href="https://www.instagram.com/rallygo.es/" className='linksFooter' target="_blank" rel="noopener noreferrer">
                            <i className="bi bi-instagram icones-link"></i>
                        </a>
                        <a href="https://www.youtube.com/watch?v=Y4yOhWSETLc" className='linksFooter px-2' target="_blank" rel="noopener noreferrer">
                            <i className="bi bi-youtube icones-link"></i>
                        </a>
                        <a href="https://x.com/Gag0val" className='linksFooter' target="_blank" rel="noopener noreferrer">
                            <i className="bi bi-twitter icones-link"></i>
                        </a>
                    </div>
                </div> 
            </div>
        </footer>
    )
}

export default Footer;
