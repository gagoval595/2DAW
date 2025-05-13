import React, { useState, useEffect } from "react";
import { apiService } from "../../services/apiService"; 

import MapViewMundo from "../MapViewMundo";
import "leaflet/dist/leaflet.css";

import { Button, Card } from "react-bootstrap";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap-icons/font/bootstrap-icons.css";

function Home() {  
  const [wrcEvents, setWrcEvents] = useState([]);
  const [scerEvents, setScerEvents] = useState([]); 
  const [showAllWRC, setShowAllWRC] = useState(false);
  const [currentPage, setCurrentPage] = useState(1);
  const [windowWidth, setWindowWidth] = useState(window.innerWidth); //per ajustar la paginació i les cards

  useEffect(() => {
    const fetchEvents = async () => {
      try {
        const response = await apiService.getEtapas();
        const wrcOnly = response.data.etapas.filter(etapa => etapa.campeonato_id === 1);
        const scerOnly = response.data.etapas.filter(etapa => etapa.campeonato_id === 2);
        setWrcEvents(wrcOnly);
        setScerEvents(scerOnly);
      } catch (error) {
        console.error('Error fetching events:', error);
        setWrcEvents([]);
        setScerEvents([]);
      }
    };

    fetchEvents();
  }, []);

  useEffect(() => {
    const handleResize = () => {
      setWindowWidth(window.innerWidth);
    };

    window.addEventListener('resize', handleResize);
    return () => window.removeEventListener('resize', handleResize);
  }, []);

  const cardsPorPagina = windowWidth >= 992 ? 3 : windowWidth >= 576 ? 2 : 1; // breakpoints pa les cards

  useEffect(() => {
    setCurrentPage(1);
  }, [cardsPorPagina]);

  // paginació de S-CER
  const ultimCard = currentPage * cardsPorPagina;
  const primerCard = ultimCard - cardsPorPagina;
  const currentEvents = scerEvents.slice(primerCard, ultimCard);
  const totalPages = Math.ceil(scerEvents.length / cardsPorPagina);

  const handlePageChange = (pageNumber) => {
    setCurrentPage(pageNumber);
  };

  return (
    <div className="Home">
      <h1>¿A dónde te quieres ir?</h1>
      <h2 className="pb-4">WRC</h2>

      <div className="container">
        {/* WRC */}
        <div className="row g-4">
          {(showAllWRC ? wrcEvents : wrcEvents.slice(0, 4)).map((event) => (
            <div key={event.id} className="col-lg-3 col-md-6 col-xs-12 h-100">
              <Card className="h-100">
                <Card.Img
                  variant="top"
                  src={event.image}
                  className="cardwrc"
                />
                <Card.Body className="d-flex flex-column h-100">
                  <Card.Title>{event.nombre}</Card.Title>
                  <Card.Text>{event.fecha}</Card.Text>
                  <Button 
                    href={`/wrc/${event.nombre.toLowerCase().replace(/\s+/g, '-')}`} 
                    className="btn-roig mt-auto"
                  >
                    Más información
                  </Button>
                </Card.Body>
              </Card>
            </div>
          ))}
        </div>
        
        {/* Ver más */}
        <div className="d-flex justify-content-center mt-4">
          <Button 
            className="btn btn-blau"
            onClick={() => setShowAllWRC(!showAllWRC)}
          >
            {showAllWRC ? 'Ver menos' : 'Ver más'}
            <i className={`bi bi-chevron-${showAllWRC ? 'up' : 'down'} ms-2`}></i>
          </Button>
        </div>

        {/* S-CER */}
        <h2 className="py-4">S-CER</h2>
        <div className="row g-4">
          {currentEvents.map((event) => (
            <div key={event.id} className="col-lg-4 col-md-6 col-sm-12">
              <Card className="h-100">
                <Card.Img
                  variant="top"
                  src={event.image}
                  className="cardscer"
                />
                <Card.Body className="d-flex flex-column">
                  <Card.Title>{event.nombre}</Card.Title>
                  <Card.Text>{event.fecha}</Card.Text>
                  <Button 
                    href={`/scer/${event.nombre.toLowerCase().replace(/\s+/g, '-')}`} 
                    className="btn-roig mt-auto"
                  >
                    Más información
                  </Button>
                </Card.Body>
              </Card>
            </div>
          ))}
        </div>

        {/*Paginación*/}
        <div className="d-flex justify-content-center mt-4">
          <nav>
            <ul className="pagination">
              <li
                className={`page-item ${currentPage === 1 ? "disabled" : ""}`}
              >
                <button
                  className="page-link"
                  onClick={() => handlePageChange(currentPage - 1)}
                  disabled={currentPage === 1}
                >
                  <i className="bi bi-chevron-left"></i>
                </button>
              </li>
              {[...Array(totalPages)].map((_, index) => (
                <li
                  key={index + 1}
                  className={`page-item ${
                    currentPage === index + 1 ? "active" : ""
                  }`}
                >
                  <button
                    className="page-link"
                    onClick={() => handlePageChange(index + 1)}
                  >
                    {index + 1}
                  </button>
                </li>
              ))}
              <li
                className={`page-item ${
                  currentPage === totalPages ? "disabled" : ""
                }`}
              >
                <button
                  className="page-link"
                  onClick={() => handlePageChange(currentPage + 1)}
                  disabled={currentPage === totalPages}
                >
                  <i className="bi bi-chevron-right"></i>
                </button>
              </li>
            </ul>
          </nav>
        </div>
      </div>

      {/*Próximo Evento bien*/}
      <div className="container-fluid bg-blauOscur py-4">
        <div className="container">
          <h2 className="text-white text-center mb-4">PRÓXIMO EVENTO</h2>
          <div className="row align-items-center">
            <div className="col-lg-6 col-sm-12 px-4">
              <p className="text-white text-evento fs-5 mb-4">
                Velocidad, adrenalina y paisajes volcánicos: el WRC Islas
                Canarias 2025 te espera con los mejores pilotos del mundo
                desafiando las curvas del asfalto canario. Un rally vibrante en
                un paraíso único.
              </p>
              <div className="d-grid d-md-block">
                <Button
                  href="/wrc/canarias"
                  className="mt-2 btn-roig px-5 py-2 w-100 w-md-auto"
                >
                  Mas información <i className="bi bi-arrow-right ps-1"></i>
                </Button>
              </div>
            </div>
            <div className="col-lg-6 col-sm-12 text-center mt-4 mt-lg-0">
              <img
                className="img-fluid px-4"
                src="/img/logos/wrc/04-wrc.png"
                alt="WRC Canarias logo"
              />
            </div>
          </div>
        </div>
      </div>
      
      {/*Mapa Mundial bien*/}
      <div className="container-fluid">
        <div className="row">
          <div className="col-12 mt-4 ">
            <h2 className="text-center pb-3"> MAPA MUNDIAL WRC Y S-CER</h2>
            <div className="mapa-mundial border border-dark border-1 ">
              <MapViewMundo />
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Home;
