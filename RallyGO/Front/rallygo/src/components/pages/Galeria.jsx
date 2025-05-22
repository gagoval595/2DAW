import React, { useState, useEffect } from 'react';
import { Container, Row, Col, Card, Button, Form, Spinner } from 'react-bootstrap';
import axios from 'axios';

function Galeria() {
  const [fotos, setFotos] = useState([]);
  const [etapas, setEtapas] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  
  // Filtros
  const [etapaSeleccionada, setEtapaSeleccionada] = useState('');
  const [fechaInicio, setFechaInicio] = useState('');
  const [fechaFin, setFechaFin] = useState('');

  useEffect(() => {
    const fetchData = async () => {
      try {
        const etapasResponse = await axios.get('http://localhost:8000/api/etapa');
        const etapasData = etapasResponse.data.etapas || etapasResponse.data || [];
        setEtapas(etapasData);
        
        // Fotos de la galería
        const fotosResponse = await axios.get('http://localhost:8000/api/galeria');
        console.log("Respuesta de la API de galería:", fotosResponse.data);

        const fotosArray = fotosResponse.data.galerias || [];
        
        console.log("Fotos extraídas:", fotosArray);
        setFotos(fotosArray);
        setLoading(false);
      } catch (err) {
        console.error("Error cargando datos:", err);
        setError('Error al cargar la galería de fotos');
        setLoading(false);
      }
    };

    fetchData();
  }, []);

  const getFullUrl = (path) => {
    if (!path) return "/assets/localizar.png";
    if (path.startsWith('http')) return path;
    return `http://localhost:8000/${path}`;
  };

  // Filtrar fotos según criterios seleccionados
  const fotosFiltradas = Array.isArray(fotos) 
    ? fotos.filter(foto => {
        // Filtro etapa
        if (etapaSeleccionada && foto.etapa_id !== parseInt(etapaSeleccionada)) {
          return false;
        }
        
        // Filtro fecha
        if (fechaInicio && foto.created_at && new Date(foto.created_at) < new Date(fechaInicio)) {
          return false;
        }
        
        if (fechaFin && foto.created_at && new Date(foto.created_at) > new Date(fechaFin)) {
          return false;
        }
        
        return true;
      })
    : [];

  if (loading) {
    return (
      <Container className="text-center my-5">
        <Spinner animation="border" role="status">
          <span className="visually-hidden">Cargando...</span>
        </Spinner>
        <p className="mt-2">Cargando galería de fotos...</p>
      </Container>
    );
  }

  if (error) {
    return (
      <Container className="text-center my-5">
        <div className="alert alert-danger">{error}</div>
      </Container>
    );
  }

  return (
    <Container className="py-4">
      <h1 className="text-center mb-4">Galería de Rallys</h1>
      <p className="text-center mb-4">Comparte y visualiza imágenes de los mejores momentos del rally</p>
      
      {/* Filtros */}
      <div className="bg-light p-3 rounded mb-4">
        <Row className="g-3">
          <Col md={4}>
            <Form.Group>
              <Form.Label>Etapa</Form.Label>
              <Form.Select 
                value={etapaSeleccionada} 
                onChange={(e) => setEtapaSeleccionada(e.target.value)}
              >
                <option value="">Todas las etapas</option>
                {etapas.map(etapa => (
                  <option key={etapa.id} value={etapa.id}>
                    {etapa.nombre || `Etapa ${etapa.id}`}
                  </option>
                ))}
              </Form.Select>
            </Form.Group>
          </Col>
          <Col md={3}>
            <Form.Group>
              <Form.Label>Fecha inicio</Form.Label>
              <Form.Control 
                type="date" 
                value={fechaInicio} 
                onChange={(e) => setFechaInicio(e.target.value)}
              />
            </Form.Group>
          </Col>
          <Col md={3}>
            <Form.Group>
              <Form.Label>Fecha fin</Form.Label>
              <Form.Control 
                type="date" 
                value={fechaFin} 
                onChange={(e) => setFechaFin(e.target.value)}
              />
            </Form.Group>
          </Col>
          <Col md={2} className="d-flex align-items-end">
            <Button 
              variant="secondary" 
              className="w-100"
              onClick={() => {
                setEtapaSeleccionada('');
                setFechaInicio('');
                setFechaFin('');
              }}
            >
              Limpiar filtros
            </Button>
          </Col>
        </Row>
      </div>
      
      {/* Galeria fotos */}
      <Row className="g-4">
        {fotosFiltradas.length > 0 ? (
          fotosFiltradas.map((foto) => {
            const etapa = etapas.find(e => e.id === foto.etapa_id);
            const etapaNombre = etapa ? (etapa.nombre || `Etapa ${foto.etapa_id}`) : `Etapa ${foto.etapa_id}`;
            
            return (
              <Col key={foto.id} md={6} lg={4} xl={4}>
                <Card className="h-100">
                  <div className="position-relative">
                    <Card.Img 
                      variant="top" 
                      src={getFullUrl(foto.url)}
                      alt={`Foto de ${etapaNombre}`}
                      style={{ height: '200px', objectFit: 'cover' }} 
                      onError={(e) => {
                        console.log("Error cargando imagen:", e.target.src);
                        e.target.src = "/assets/localizar.png";
                      }}
                    />
                    <div className="position-absolute bottom-0 start-0 bg-dark bg-opacity-50 text-white p-2 w-100">
                      <h5 className="m-0">{etapaNombre}</h5>
                    </div>
                  </div>
                  <Card.Body>
                    <div className="d-flex justify-content-between align-items-center">
                      <small className="text-muted">
                        {new Date(foto.created_at).toLocaleDateString()}
                      </small>
                      <div>
                        <Button variant="outline-primary" size="sm" className="me-1">
                          <i className="bi bi-hand-thumbs-up"></i>
                        </Button>
                        <Button variant="outline-secondary" size="sm">
                          <i className="bi bi-share"></i>
                        </Button>
                      </div>
                    </div>
                    
                    {foto.descripcion && (
                      <p className="card-text mt-2 small">{foto.descripcion}</p>
                    )}
                  </Card.Body>
                </Card>
              </Col>
            );
          })
        ) : (
          <Col className="text-center my-5">
            <p>No se encontraron fotos que coincidan con los filtros seleccionados.</p>
          </Col>
        )}
      </Row>
    </Container>
  );
}

export default Galeria;