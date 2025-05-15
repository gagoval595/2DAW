import { useState, useEffect } from "react";
import { Container, Row, Col, Card, Button, Carousel } from "react-bootstrap";
import "bootstrap/dist/css/bootstrap.min.css";
import axios from 'axios';

function Servicios() {
  const [servicios, setServicios] = useState([]);
  const [tiposServicio, setTiposServicio] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get('http://localhost:8000/api/tipo-servicio');
        setTiposServicio(response.data.tipos);
        setLoading(false);
      } catch (err) {
        setError('Error al cargar los servicios');
        setLoading(false);
      }
    };

    fetchData();
  }, []);

  return (
    <div className="container">
      <h1 className="text-center my-4">Servicios disponibles</h1>

      {/* Servicios por tipo */}
      {tiposServicio.map((tipo) => (
        <section key={tipo.id} className="mb-5">
          <h2 className="mb-4">{tipo.tipo}</h2>
          <div className="row g-4">
            {tipo.servicios?.map((servicio) => (
              <div className="col-lg-4 col-md-6 col-sm-12" key={servicio.id}>
                <div className="card h-100">
                  <Card.Img 
                    variant="top" 
                    src={tipo.foto || "/assets/localizar.png"} 
                    alt={tipo.nombre}
                    style={{ height: '200px', objectFit: 'cover' }}
                  />
                  <Card.Body className="d-flex flex-column">
                    <Card.Title>{tipo.nombre}</Card.Title>
                    <Card.Text>
                      <p>{tipo.descripcion}</p>
                      <p><strong>Ubicación: </strong>{servicio.ubicación}</p>
                    </Card.Text>
                    <div className="mt-auto">
                      <Button className="btn-roig">Reservar</Button>
                      <Button className="mx-2 btn-blau">Ver más</Button>
                    </div>
                  </Card.Body>
                </div>
              </div>
            ))}
          </div>
        </section>
      ))}
    </div>
  );
}

export default Servicios;