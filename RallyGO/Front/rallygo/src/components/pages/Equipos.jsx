import { Button, Card } from "react-bootstrap";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap-icons/font/bootstrap-icons.css";

function Equipos() {
  return (
    <div className="container py-4">
      {/* WRC */}
      <h2 className="text-center mb-4">Equipos WRC</h2>
      <div className="row g-4">
        <div className="col-lg-4 col-md-6">
          <Card className="cardwrc h-100">
            <Card.Img variant="top" src="../img/cars/wrc/wrc-hyundai.jpg" />
            <Card.Body>
              <p className="fw-bold">WRC</p>
              <Card.Title>Hyundai Shell Mobis WRC Rally Team</Card.Title>
            </Card.Body>
          </Card>
        </div>
        <div className="col-lg-4 col-md-6">
          <Card className="cardwrc h-100">
            <Card.Img variant="top" src="../img/cars/wrc/wrc-ford.jpg" />
            <Card.Body>
              <p className="fw-bold">WRC</p>
              <Card.Title>Hyundai Shell Mobis WRC Rally Team</Card.Title>
            </Card.Body>
          </Card>
        </div>
        <div className="col-lg-4 col-md-6">
          <Card className="cardwrc h-100">
            <Card.Img variant="top" src="../img/cars/wrc/wrc-yaris.jpg" />
            <Card.Body>
              <p className="fw-bold">WRC</p>
              <Card.Title>Hyundai Shell Mobis WRC Rally Team</Card.Title>
            </Card.Body>
          </Card>
        </div>
        <div className="col-lg-4 col-md-6">
          <Card className="cardwrc h-100">
            <Card.Img variant="top" src="../img/cars/wrc/wrc2-citroen.jpg" />
            <Card.Body>
              <p className="fw-bold">WRC2</p>
              <Card.Title>Hyundai Shell Mobis WRC Rally Team</Card.Title>
            </Card.Body>
          </Card>
        </div>
        <div className="col-lg-4 col-md-6">
          <Card className="cardwrc h-100">
            <Card.Img variant="top" src="../img/cars/wrc/skoda2-wrc2.jpg" />
            <Card.Body>
              <p className="fw-bold">WRC2</p>
              <Card.Title>Hyundai Shell Mobis WRC Rally Team</Card.Title>
            </Card.Body>
          </Card>
        </div>
        <div className="col-lg-4 col-md-6">
          <Card className="cardwrc h-100">
            <Card.Img variant="top" src="../img/cars/wrc/toyota-wrc2.jpeg" />
            <Card.Body>
              <p className="fw-bold">WRC2</p>
              <Card.Title>Hyundai Shell Mobis WRC Rally Team</Card.Title>
            </Card.Body>
          </Card>
        </div>
      </div>

      {/* SCER */}

      <h2 className="text-center my-4">Equipos S-CER</h2>
      <div className="row g-4">
        <div className="col-lg-4 col-md-6">
          <Card className="cardscer h-100">
            <Card.Img variant="top" src="../img/cars/scer/scer-hyundai.png" />
            <Card.Body>
              <p className="fw-bold">S-CER</p>
              <Card.Title>HYUANDAI MOTOR ESPAÑA</Card.Title>
            </Card.Body>
          </Card>
        </div>
        <div className="col-lg-4 col-md-6">
          <Card className="cardscer h-100">
            <Card.Img variant="top" src="../img/cars/scer/scer-skoda.jpg" />
            <Card.Body>
              <p className="fw-bold">S-CER</p>
              <Card.Title>SKODA RECALVI TEAM</Card.Title>
            </Card.Body>
          </Card>
        </div>
        <div className="col-lg-4 col-md-6">
          <Card className="cardscer h-100">
            <Card.Img variant="top" src="../img/cars/scer/scer-toyota.jpg" />
            <Card.Body>
              <p className="fw-bold">S-CER</p>
              <Card.Title>TOYOTA GAZOO RACING SPAIN</Card.Title>
            </Card.Body>
          </Card>
        </div>
        <div className="col-lg-4 col-md-6">
          <Card className="cardscer h-100">
            <Card.Img variant="top" src="../img/cars/scer/scer-ford.jpg" />
            <Card.Body>
              <p className="fw-bold">S-CER</p>
              <Card.Title>FORD FIESTA RALLY2</Card.Title>
            </Card.Body>
          </Card>
        </div>
        <div className="col-lg-4 col-md-6">
          <Card className="cardscer h-100">
            <Card.Img variant="top" src="../img/cars/scer/scer-citroen.jpg" />
            <Card.Body>
              <p className="fw-bold">S-CER</p>
              <Card.Title>CITRÖEN RALLY TEAM</Card.Title>
            </Card.Body>
          </Card>
        </div>
      </div>
    </div>
  );
}

export default Equipos;
