import React , { useState } from "react";
import "leaflet/dist/leaflet.css";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap-icons/font/bootstrap-icons.css";
import Header from "./common/Header";
import Footer from "./common/Footer";
import MapViewCanarias from "./components/wrc/MapView-canarias";


import { Button, Carousel, Card } from "react-bootstrap";

function App() {
  const [showMap, setShowMap] = React.useState(false);

  const handleShowMap = () => {
    setShowMap(!showMap);
  }
 
  return (
    <div className="App">
      <Header />
      <h1 className="text-align-center">¿A dónde te quieres ir?</h1>
      <h2 className="pb-4">WRC</h2>

      <div className="container">
        {/* WRC */}
        <div className="row">
          <div className="col-lg-3 col-md-6 col-xs-12 h-100">
            <Card className="h-100">
              <Card.Img variant="top" src="/img/home/wrc/01-islasCanarias.jpg" className="cardwrc" />
              <Card.Body className="d-flex flex-column h-100">
                <Card.Title>Islas Canarias</Card.Title>
                <Card.Text>25-27 de Abril</Card.Text>
                <Button href="/canarias" className="btn-roig mt-auto">
                  Más información
                </Button>
              </Card.Body>
            </Card>
          </div>
          <div className="col-lg-3 col-md-6 col-xs-12 h-100">
            <Card className="h-100">
              <Card.Img variant="top" src="/img/home/wrc/02-portugal.jpg" className="cardwrc"/>
              <Card.Body className="d-flex flex-column h-100">
                <Card.Title>Portugal</Card.Title>
                <Card.Text>15-18 de Mayo</Card.Text>
                <Button href="/portugal" className="btn-roig mt-auto">
                  Más información
                </Button>
              </Card.Body>
            </Card>
          </div>
          <div className="col-lg-3 col-md-6 col-xs-12 h-100">
            <Card className="h-100">
              <Card.Img variant="top" src="/img/home/wrc/03-sardegna.jpg" className="cardwrc"/>
              <Card.Body className="d-flex flex-column h-100">
                <Card.Title>Sardegna</Card.Title>
                <Card.Text>05-08 de Junio</Card.Text>
                <Button href="/sardegna" className="btn-roig mt-auto">
                  Más información
                </Button>
              </Card.Body>
            </Card>
          </div>
          <div className="col-lg-3 col-md-6 col-xs-12 h-100">
            <Card className="h-100">
              <Card.Img variant="top" src="/img/home/wrc/04-grecia.jpg" className="cardwrc"/>
              <Card.Body className="d-flex flex-column h-100">
                <Card.Title>Grecia</Card.Title>
                <Card.Text>23-26 de Junio</Card.Text>
                <Button href="/grecia" className="btn-roig mt-auto">
                  Más información
                </Button>
              </Card.Body>
            </Card>
          </div>
        </div>

        <div className="d-flex justify-content-center my-3">
          <Button className="btn btn-blau">
            Ver más
            <i className="bi bi-chevron-down ms-2"></i>
          </Button>
        </div>

        {/* S-CER */}
        <h2 className="py-4">S-CER</h2>
        <Carousel className="carousel-custom h-100">
          <Carousel.Item className="h-100">
            <div className="row">
              <div className="col-lg-4 col-md-6 col-sm-12 h-100">
                <Card className="h-100">
                  <Card.Img variant="top" src="/img/home/scer/01-sierraMorena.jpg" className="cardscer" />
                  <Card.Body>
                    <Card.Title>Rallye Sierra Morena</Card.Title>
                    <Card.Text>06-07 de Abril</Card.Text>
                    <Button href="/scer/sierra-morena" className="btn-roig">Más información</Button>
                  </Card.Body>
                </Card>
              </div>

              <div className="col-lg-4 col-md-6 col-sm-12 h-100">
                <Card className="h-100">
                  <Card.Img variant="top" src="/img/home/scer/02-ourense.jpg" className="cardscer" />
                  <Card.Body>
                    <Card.Title>Rallye de Ourense Recalvi</Card.Title>
                    <Card.Text>13-14 de Junio</Card.Text>
                    <Button href="/scer/ourense" className="btn-roig">Más información</Button>
                  </Card.Body>
                </Card>
              </div>

              <div className="col-lg-4 col-md-6 col-sm-12 h-100">
                <Card className="h-100">
                  <Card.Img variant="top" src="/img/home/scer/03-riasBaixas.jpg" className="cardscer"/>
                  <Card.Body>
                    <Card.Title>Rally Recalvi Rías Baixas</Card.Title>
                    <Card.Text>04-05 de Julio</Card.Text>
                    <Button href="/scer/rias-baixas" className="btn-roig">Más información</Button>
                  </Card.Body>
                </Card>
              </div>
            </div>
          </Carousel.Item>

          <Carousel.Item className="h-100">
            <div className="row">
              <div className="col-lg-4 col-md-6 col-sm-12 h-100">
                <Card className="h-100">
                  <Card.Img variant="top" src="/img/home/scer/04-asturias.jpg" className="cardscer"/>
                  <Card.Body>
                    <Card.Title>Rally Blendio Princesa de Asturias</Card.Title>
                    <Card.Text>12-13 de Septiembre</Card.Text>
                    <Button href="/scer/asturias" className="btn-roig">Más información</Button>
                  </Card.Body>
                </Card>
              </div>
              <div className="col-lg-4 col-md-6 col-sm-12 h-100">
                <Card className="h-100">
                  <Card.Img variant="top" src="/img/home/scer/05-villaLlanes.jpg" className="cardscer"/>
                  <Card.Body>
                    <Card.Title>Rallye Villa de Llanes</Card.Title>
                    <Card.Text>26-27 de Septiembre</Card.Text>
                    <Button href="/scer/villa-de-llanes" className="btn-roig">Más información</Button>
                  </Card.Body>
                </Card>
              </div>
              <div className="col-lg-4 col-md-6 col-sm-12 h-100">
                <Card className="h-100">
                  <Card.Img variant="top" src="/img/home/scer/06-racc.jpg" className="cardscer"/>
                  <Card.Body>
                    <Card.Title>RallyRACC Costa Daurada</Card.Title>
                    <Card.Text>24-25 Octubre</Card.Text>
                    <Button href="/scer/racc" className="btn-roig">Más información</Button>
                  </Card.Body>
                </Card>
              </div>
            </div>
          </Carousel.Item>

          <Carousel.Item className="h-100">
            <div className="row">
              <div className="col-lg-4 col-md-6 col-sm-12 h-100">
                <Card className="h-100">
                  <Card.Img variant="top" src="/img/home/scer/07-laNucia.jpg" className="cardscer" />
                  <Card.Body>
                    <Card.Title>Rallye de La Nucía-Meditarráneo</Card.Title>
                    <Card.Text>07-08 de Noviembre</Card.Text>
                    <Button href="/scer/la-nucia" className="btn-roig">Más información</Button>
                  </Card.Body>
                </Card>
              </div>
            </div>
          </Carousel.Item>
        </Carousel>

        <div className="d-flex justify-content-center my-3">
          <Button className="btn-blau my-3 justify-content-center" onClick={handleShowMap}>
            {showMap ? "Ocultar mapa" : "Ver mapa"}
            <i className="bi bi-map ms-2"></i>
          </Button>
        </div>
          {showMap && <MapViewCanarias />}
      </div>
      <div className="mt-5">
        <Footer />
      </div>
    </div>
  );
}

export default App;
