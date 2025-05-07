import React from "react";
import "leaflet/dist/leaflet.css";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap-icons/font/bootstrap-icons.css";
import Header from "./components/Header";

import { Button, Carousel, Card } from "react-bootstrap";

function App() {
  return (
    <div className="App">
      <Header />
      <h1 className="text-align-center">¿A dónde te quieres ir?</h1>
      <h2 className="pb-4">WRC</h2>

      <div className="container">
        {/*WRC*/}
        <div className="row">
          <div className="col-lg-3 col-md-6 col-sm-12">
            <Card>
              <Card.Img variant="top" src="/img/home/wrc/01-islasCanarias.jpg"/>
              <Card.Body>
                <Card.Title>Islas Canarias</Card.Title>
                <Card.Text>25-27 de Abril</Card.Text>
                <Button href="/canarias" className="btn-roig">Más información</Button>
              </Card.Body>
            </Card>
          </div>
          <div className="col-lg-3 col-md-6 col-sm-12">
            <Card>
              <Card.Img variant="top" src="/img/home/wrc/02-portugal.jpg" />
              <Card.Body>
                <Card.Title>Portugal</Card.Title>
                <Card.Text>15-18 de Mayo</Card.Text>
                <Button href="/portugal" className="btn-roig">Más información</Button>
              </Card.Body>
            </Card>
          </div>
          <div className="col-lg-3 col-md-6 col-sm-12">
            <Card>
              <Card.Img variant="top" src="/img/home/wrc/03-sardegna.jpg" />
              <Card.Body>
                <Card.Title>Sardegna</Card.Title>
                <Card.Text>05-08 de Junio</Card.Text>
                <Button href="/sardegna" className="btn-roig">Más información</Button>
              </Card.Body>
            </Card>
          </div>
          <div className="col-lg-3 col-md-6 col-sm-12">
            <Card>
              <Card.Img variant="top" src="/img/home/wrc/04-grecia.jpg" />
              <Card.Body>
                <Card.Title>Grecia</Card.Title>
                <Card.Text>23-26 de Junio</Card.Text>
                <Button href="/grecia" className="btn-roig">Más información</Button>
              </Card.Body>
            </Card>
          </div>
        </div>
        
        <div className="d-flex justify-content-center my-3 ">
          <Button className="btn btn-blau">
            Ver más
            <i className="bi bi-chevron-down ms-2"></i>
          </Button>
        </div>

        {/*S-CER*/}
        <h2 className="py-4">S-CER</h2>
        <Carousel>
          <Carousel.Item>
            <div className="row">
              <div className="col-lg-4 col-md-6 col-sm-12">
                <Card>
                  <Card.Img variant="top" src="/img/home/scer/01-ourense.jpg" />
                  <Card.Body>
                    <Card.Title>Card title</Card.Title>
                    <Card.Text>
                      Some quick example text to build on the card title and
                      make up the bulk of the card's content.
                    </Card.Text>
                    <Button>Más información</Button>
                  </Card.Body>
                </Card>
              </div>
              <div className="col-lg-4 col-md-6 col-sm-12">
                <Card>
                  <Card.Img
                    variant="top"
                    src="/img/home/scer/02-riasBaixas.jpg"
                  />
                  <Card.Body>
                    <Card.Title>Card title</Card.Title>
                    <Card.Text>
                      Some quick example text to build on the card title and
                      make up the bulk of the card's content.
                    </Card.Text>
                    <Button>Más información</Button>
                  </Card.Body>
                </Card>
              </div>
              <div className="col-lg-4 col-md-6 col-sm-12">
                <Card>
                  <Card.Img
                    variant="top"
                    src="/img/home/scer/03-asturias.jpg"
                  />
                  <Card.Body>
                    <Card.Title>Card title</Card.Title>
                    <Card.Text>
                      Some quick example text to build on the card title and
                      make up the bulk of the card's content.
                    </Card.Text>
                    <Button>Más información</Button>
                  </Card.Body>
                </Card>
              </div>
            </div>
          </Carousel.Item>
          <Carousel.Item>
            <div className="row">
              <div className="col-lg-4 col-md-6 col-sm-12">
                <Card>
                  <Card.Img variant="top" src="/img/home/scer/01-ourense.jpg" />
                  <Card.Body>
                    <Card.Title>Card title</Card.Title>
                    <Card.Text>
                      Some quick example text to build on the card title and
                      make up the bulk of the card's content.
                    </Card.Text>
                    <Button>Más información</Button>
                  </Card.Body>
                </Card>
              </div>
              <div className="col-lg-4 col-md-6 col-sm-12">
                <Card>
                  <Card.Img
                    variant="top"
                    src="https://via.placeholder.com/150"
                  />
                  <Card.Body>
                    <Card.Title>Card title</Card.Title>
                    <Card.Text>
                      Some quick example text to build on the card title and
                      make up the bulk of the card's content.
                    </Card.Text>
                    <Button>Más información</Button>
                  </Card.Body>
                </Card>
              </div>
              <div className="col-lg-4 col-md-6 col-sm-12">
                <Card>
                  <Card.Img
                    variant="top"
                    src="https://via.placeholder.com/150"
                  />
                  <Card.Body>
                    <Card.Title>Card title</Card.Title>
                    <Card.Text>
                      Some quick example text to build on the card title and
                      make up the bulk of the card's content.
                    </Card.Text>
                    <Button>Más información</Button>
                  </Card.Body>
                </Card>
              </div>
            </div>
          </Carousel.Item>
        </Carousel>

        <div className="d-flex justify-content-center my-3 ">  
          <Button className="btn-blau my-3 justify-content-center">
            Ver mapa
            <i className="bi bi-map ms-2"></i>
          </Button>
        </div>

      </div>
    </div>
  );
}

export default App;
