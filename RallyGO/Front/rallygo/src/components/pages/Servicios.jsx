import React, { useState, useEffect } from 'react';
import { Container, Row, Col, Card } from 'react-bootstrap';
import { apiService } from '../../services/apiService';

function Servicios() {
  const [servicios, setServicios] = useState([]);
  const [tiposServicio, setTiposServicio] = useState([]);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const [serviciosRes, tiposRes] = await Promise.all([
          apiService.getServicios(),
          apiService.getTiposServicio()
        ]);
        
        setServicios(serviciosRes.data);
        setTiposServicio(tiposRes.data);
      } catch (error) {
        console.error("Error fetching data:", error);
      }
    };

    fetchData();
  }, []);

  return (
    <Container>
      <h1 className="my-4">Servicios Disponibles</h1>
      <Row>
        {tiposServicio.map((tipo) => (
          <Col key={tipo.id} md={4} className="mb-4">
            <Card>
              <Card.Body>
                <Card.Title>{tipo.nombre}</Card.Title>
                <Card.Text>{tipo.descripcion}</Card.Text>
              </Card.Body>
            </Card>
          </Col>
        ))}
      </Row>
    </Container>
  );
}

export default Servicios;