import React from 'react';
import logo from "../components/img/icona.jpg";

const Footer = () => {
    return (
        <footer>
            <div className='container-fluid bg-blauOscur text-white py-4'>
                <div className='row'>
                    <div className='col-lg-4 col-md-6 col-sm-12 d-flex justify-content-center align-items-center'>
                        <img src={logo} alt='Logo' className='img-fluid logoFooter' href="/home" />
                    </div>
                    <div className='col-lg-4 col-md-6 col-sm-12 justify-content-center align-items-center text-center'>
                        <h5>PÁGINAS</h5>
                        <ul className="footer-links">
                            <li><a href='/home' className='linksFooter'>Home</a></li>
                            <li><a href='/calendario' className='linksFooter'>Calendario</a></li>
                            <li><a href='/equipos' className='linksFooter'>Equipos</a></li>
                            <li><a href='/galeria' className='linksFooter'>Galeria</a></li>
                            <li><a href='/servicios' className='linksFooter'>Servicios</a></li>
                            <li><a href='/contacto' className='linksFooter'>Contacto</a></li>
                        </ul>
                    </div>
                    <div className='col-lg-4 col-sm-12 justify-content-center align-items-center text-center'>
                        <h5>SOBRE NOSOTROS</h5>
                        <ul className="footer-links pt-3">
                            <li><a href='/terminos-condiciones' className='linksFooter'>Términos y Condiciones</a></li>
                            <li><a href='/politica-privacidad' className='linksFooter'>Política de Privacidad</a></li>
                            <li><a href='/politica-cookies' className='linksFooter'>Política de Cookies</a></li>
                        </ul>
                    
                        <i className="bi bi-instagram icones-link linksFooter"></i> 
                        <i className="bi bi-youtube icones-link linksFooter px-2"></i> 
                        <i className="bi bi-twitter icones-link linksFooter"></i> 
                        {/* href="https://www.instagram.com/rallygo.es/" ns pq no va*/}
                    </div>
                </div> 
            </div>
        </footer>
    )
}

export default Footer;
