import React, { useState, useEffect } from 'react';
import { Container, Row, Col, Card } from 'react-bootstrap';
import { apiService } from '../../services/apiService';

function Galeria() {
  const [fotos, setFotos] = useState([]);

  useEffect(() => {
    const fetchFotos = async () => {
      try {
        const response = await apiService.getGaleriaFotos();
        setFotos(response.data);
      } catch (error) {
        console.error("Error fetching fotos:", error);
      }
    };

    fetchFotos();
  }, []);

  return (
    <Container>
      <h1 className="my-4">Galería de Fotos</h1>
      <Row>
        {fotos.map((foto) => (
          <Col key={foto.id} md={4} className="mb-4">
            <Card>
              <Card.Img variant="top" src={foto.url} />
              <Card.Body>
                <Card.Text>Etapa: {foto.etapa?.nombre}</Card.Text>
              </Card.Body>
            </Card>
          </Col>
        ))}
      </Row>
    </Container>
  );
}

export default Galeria;