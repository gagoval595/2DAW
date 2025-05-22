import React, { useState, useEffect } from 'react';
import { Form, Button, Alert, Image, Spinner, Row, Col, Card } from 'react-bootstrap';
import axios from 'axios';

function GaleriaForm() {
  const [etapaId, setEtapaId] = useState('');
  const [foto, setFoto] = useState(null);
  const [descripcion, setDescripcion] = useState('');
  const [preview, setPreview] = useState(null);
  const [isLoading, setIsLoading] = useState(false);
  const [message, setMessage] = useState({ text: '', type: '' });
  const [etapas, setEtapas] = useState([]);
  const [loadingEtapas, setLoadingEtapas] = useState(true);
  const [fotosCargadas, setFotosCargadas] = useState([]);

  useEffect(() => {
    const fetchEtapas = async () => {
      try {
        const response = await axios.get('http://localhost:8000/api/etapa');
        const etapasData = response.data.etapas || response.data || [];
        setEtapas(etapasData);
        setLoadingEtapas(false);
      } catch (error) {
        console.error('Error al cargar etapas:', error);
        setLoadingEtapas(false);
        setMessage({
          text: 'Error al cargar etapas. Por favor, intenta nuevamente.',
          type: 'danger'
        });
      }
    };

    const fetchFotos = async () => {
      try {
        const response = await axios.get('http://localhost:8000/api/galeria');
        const fotosArray = response.data.fotos || 
                          response.data.galeria || 
                          (Array.isArray(response.data) ? response.data : []);
        setFotosCargadas(fotosArray);
      } catch (error) {
        console.error('Error al cargar fotos existentes:', error);
      }
    };

    fetchEtapas();
    fetchFotos();
  }, []);

  const handleFotoChange = (e) => {
    const file = e.target.files[0];
    
    if (file) {
      setFoto(file);
      setPreview(null); 
      const reader = new FileReader();
      reader.onloadend = () => {
        setPreview(reader.result);
      };
      reader.readAsDataURL(file);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    
    if (!etapaId || !foto) {
      setMessage({ 
        text: !etapaId ? 'Debes seleccionar una etapa' : 'Debes seleccionar una imagen', 
        type: 'danger' 
      });
      return;
    }
    
    setIsLoading(true);
    setMessage({ text: '', type: '' });
    
    try {
      const formData = new FormData();
      formData.append('etapa_id', etapaId);
      formData.append('url', foto);  
      
      if (descripcion) {
        formData.append('descripcion', descripcion);
      }
      
   
      console.log('Enviando datos a la API:');
      for (let pair of formData.entries()) {
        console.log(pair[0] + ': ' + (pair[0] === 'url' ? pair[1].name : pair[1]));
      }
      
      const response = await axios.post(
        'http://localhost:8000/api/galeria',
        formData,
        {
          headers: {
            'Content-Type': 'multipart/form-data',
            'Accept': 'application/json'
          }
        }
      );
      
      console.log('Respuesta:', response.data);
      setMessage({
        text: 'Imagen cargada exitosamente',
        type: 'success'
      });
      
      setEtapaId('');
      setFoto(null);
      setPreview(null);
      setDescripcion('');
      
      // act la lista de fotos
      const updatedFotos = await axios.get('http://localhost:8000/api/galeria');
      const fotosArray = updatedFotos.data.fotos || 
                      updatedFotos.data.galeria || 
                      (Array.isArray(updatedFotos.data) ? updatedFotos.data : []);
      setFotosCargadas(fotosArray);
      
    } catch (error) {
      console.error('Error completo:', error);
      
      let errorMessage = 'Error desconocido';
      if (error.response) {
        errorMessage = error.response.data.message || error.response.data.error || 'Error del servidor';
        console.error('Datos del error:', error.response.data);
      } else if (error.request) {
        errorMessage = 'No se recibió respuesta del servidor';
      } else {
        errorMessage = error.message;
      }
      
      setMessage({
        text: `Error al subir la imagen: ${errorMessage}`,
        type: 'danger'
      });
    } finally {
      setIsLoading(false);
    }
  };

  const getFullUrl = (path) => {
    if (!path) return null;
    if (path.startsWith('http')) return path;
    return `http://localhost:8000/${path}`;
  };

  const handleDeleteFoto = async (id) => {
    if (window.confirm('¿Estás seguro de que deseas eliminar esta foto?')) {
      try {
        await axios.delete(`http://localhost:8000/api/galeria/${id}`);
        setMessage({
          text: 'Foto eliminada con éxito',
          type: 'success'
        });
        
        const updatedFotos = fotosCargadas.filter(foto => foto.id !== id);
        setFotosCargadas(updatedFotos);
        
      } catch (error) {
        console.error('Error al eliminar foto:', error);
        setMessage({
          text: `Error al eliminar la foto: ${error.response?.data?.message || error.message}`,
          type: 'danger'
        });
      }
    }
  };

  return (
    <div>
      <h3 className="mb-4">Subir Nueva Foto a la Galería</h3>
      
      {message.text && (
        <Alert variant={message.type} dismissible onClose={() => setMessage({ text: '', type: '' })}>
          {message.text}
        </Alert>
      )}
      
      <Form onSubmit={handleSubmit}>
        <Row>
          <Col md={6}>
            <Form.Group className="mb-3">
              <Form.Label>Etapa</Form.Label>
              <Form.Select 
                value={etapaId}
                onChange={(e) => setEtapaId(e.target.value)}
                disabled={loadingEtapas || isLoading}
                required
              >
                <option value="">Selecciona una etapa</option>
                {etapas.map(etapa => (
                  <option key={etapa.id} value={etapa.id}>
                    {etapa.nombre || `Etapa ${etapa.id}`}
                  </option>
                ))}
              </Form.Select>
            </Form.Group>
            
            <Form.Group className="mb-3">
              <Form.Label>Imagen</Form.Label>
              <Form.Control
                type="file"
                accept="image/*"
                onChange={handleFotoChange}
                disabled={isLoading}
                required
              />
              <Form.Text className="text-muted">
                Formatos permitidos: JPG, PNG, GIF (máx. 5MB)
              </Form.Text>
            </Form.Group>
            
            <Form.Group className="mb-3">
              <Form.Label>Descripción (opcional)</Form.Label>
              <Form.Control
                as="textarea"
                rows={3}
                value={descripcion}
                onChange={(e) => setDescripcion(e.target.value)}
                disabled={isLoading}
                placeholder="Agrega una descripción para esta imagen"
              />
            </Form.Group>
            
            <Button 
              variant="primary" 
              type="submit" 
              disabled={isLoading}
              className="mb-4"
            >
              {isLoading ? (
                <>
                  <Spinner as="span" animation="border" size="sm" role="status" aria-hidden="true" />
                  <span className="ms-2">Subiendo...</span>
                </>
              ) : 'Subir Foto'}
            </Button>
          </Col>
          
          <Col md={6}>
            <Form.Label>Vista previa</Form.Label>
            <div className="preview-container border rounded p-2 d-flex justify-content-center align-items-center" style={{ height: '300px', background: '#f8f9fa' }}>
              {preview ? (
                <Image 
                  src={preview} 
                  alt="Vista previa" 
                  style={{ maxWidth: '100%', maxHeight: '100%', objectFit: 'contain' }} 
                />
              ) : (
                <p className="text-muted text-center">No hay imagen seleccionada</p>
              )}
            </div>
          </Col>
        </Row>
      </Form>
      
      <hr className="my-4" />
      
      <h4 className="mb-3">Fotos en la Galería</h4>
      
      <Row className="g-3">
        {Array.isArray(fotosCargadas) && fotosCargadas.length > 0 ? (
          fotosCargadas.map(foto => {
            const etapa = etapas.find(e => e.id === foto.etapa_id);
            
            return (
              <Col key={foto.id} md={4} className="mb-3">
                <Card>
                  <Card.Img 
                    variant="top" 
                    src={getFullUrl(foto.url)} 
                    alt={`Foto de ${etapa?.nombre || 'etapa'}`}
                    style={{ height: '180px', objectFit: 'cover' }}
                    onError={(e) => {
                      e.target.src = "/assets/localizar.png";
                    }}
                  />
                  <Card.Body>
                    <Card.Title>{etapa?.nombre || `Etapa ${foto.etapa_id}`}</Card.Title>
                    <Card.Text className="small text-muted">
                      {new Date(foto.created_at).toLocaleDateString()}
                    </Card.Text>
                    <Button 
                      variant="danger" 
                      size="sm" 
                      onClick={() => handleDeleteFoto(foto.id)}
                    >
                      Eliminar
                    </Button>
                  </Card.Body>
                </Card>
              </Col>
            );
          })
        ) : (
          <Col>
            <p className="text-muted">No hay fotos en la galería</p>
          </Col>
        )}
      </Row>
    </div>
  );
}

export default GaleriaForm;