import { useState, useEffect, useCallback } from "react";
import { Form, Button, Alert } from "react-bootstrap";
import { apiService } from "../services/apiService";
import MapLocationPicker from "./MapLocationPicker";

function AddServiceForm() {
  const [tipoServicioId, setTipoServicioId] = useState("");
  const [etapaId, setEtapaId] = useState("");
  const [ubicacion, setUbicacion] = useState("");
  const [latitud, setLatitud] = useState("");
  const [longitud, setLongitud] = useState("");
  const [tiposServicio, setTiposServicio] = useState([]);
  const [etapas, setEtapas] = useState([]);
  const [isLoading, setIsLoading] = useState(false);
  const [message, setMessage] = useState({ text: "", type: "" });
  const [validationErrors, setValidationErrors] = useState({});
  const [mapKey, setMapKey] = useState(0); // Para forzar re-renderizado del mapa

  useEffect(() => {
    const fetchData = async () => {
      try {
        const tiposResponse = await apiService.getTiposServicio();
        setTiposServicio(Array.isArray(tiposResponse.data) ? tiposResponse.data : 
                          (tiposResponse.data?.tipos || []));
        
        const etapasResponse = await apiService.getEtapas();
        console.log("Respuesta de etapas:", etapasResponse);
        
        let etapasArray = [];
        if (Array.isArray(etapasResponse.data)) {
          etapasArray = etapasResponse.data;
        } else if (etapasResponse.data?.etapas && Array.isArray(etapasResponse.data.etapas)) {
          etapasArray = etapasResponse.data.etapas;
        } else if (typeof etapasResponse.data === 'object') {
          etapasArray = Object.values(etapasResponse.data);
        }
        
        setEtapas(etapasArray);
      } catch (error) {
        console.error("Error al cargar datos:", error);
        setMessage({ 
          text: "Error al cargar los datos necesarios", 
          type: "danger" 
        });
      }
    };

    fetchData();
  }, []);

  const handleEtapaChange = (e) => {
    const selectedEtapaId = e.target.value;
    setEtapaId(selectedEtapaId);
    
    if (selectedEtapaId) {
      const selectedEtapa = etapas.find(etapa => etapa.id == selectedEtapaId);
      console.log("Etapa seleccionada:", selectedEtapa);
      
      if (selectedEtapa && selectedEtapa.latitud && selectedEtapa.longitud) {
        console.log(`Actualizando coordenadas: lat=${selectedEtapa.latitud}, lng=${selectedEtapa.longitud}`);
        setLatitud(selectedEtapa.latitud.toString());
        setLongitud(selectedEtapa.longitud.toString());
        
        setMapKey(prevKey => prevKey + 1);
      } else {
        console.warn("La etapa no tiene coordenadas definidas");
      }
    }
  };

  const handleLocationSelect = useCallback((lat, lng) => {
    setLatitud(lat.toFixed(6));
    setLongitud(lng.toFixed(6));
  }, []);

  const handleSubmit = async (event) => {
    event.preventDefault();
    setIsLoading(true);
    setMessage({ text: "", type: "" });
    setValidationErrors({});

    try {
      const newService = {
        tipo_servicio_id: parseInt(tipoServicioId),
        etapa_id: parseInt(etapaId), 
        ubicacion: ubicacion.trim(),
        latitud: parseFloat(latitud),
        longitud: parseFloat(longitud),
      };

      if (!newService.tipo_servicio_id) {
        throw new Error("Debes seleccionar un tipo de servicio");
      }

      if (!newService.etapa_id) {
        throw new Error("Debes seleccionar una etapa");
      }

      if (!newService.ubicacion) {
        throw new Error("La ubicación no puede estar vacía");
      }

      if (isNaN(newService.latitud) || isNaN(newService.longitud)) {
        throw new Error("Las coordenadas no son válidas");
      }

      console.log("Enviando servicio:", newService);
      await apiService.createServicio(newService);
      
      setTipoServicioId("");
      setEtapaId("");
      setUbicacion("");
      setLatitud("");
      setLongitud("");
      
      setMessage({ 
        text: "Servicio creado correctamente", 
        type: "success" 
      });
    } catch (error) {
      console.error("Error al crear servicio:", error);
      let errorMessage = "Error al crear el servicio";
      if (error.response && error.response.data && error.response.data.errors) {
        errorMessage = "Errores de validación: " + Object.values(error.response.data.errors).flat().join(", ");
        setValidationErrors(error.response.data.errors);
      } else {
        errorMessage = error.message || "Error al crear el servicio";
      }
      setMessage({
        text: errorMessage,
        type: "danger",
      });
    } finally {
      setIsLoading(false);
    }
  };

  const getValidationError = (field) => {
    return validationErrors[field] ? validationErrors[field][0] : null;
  };

  return (
    <Form onSubmit={handleSubmit}>
      {message.text && (
        <Alert variant={message.type}>{message.text}</Alert>
      )}

      <Form.Group controlId="tipoServicioId" className="mb-3">
        <Form.Label>Tipo de Servicio</Form.Label>
        <Form.Control
          as="select"
          value={tipoServicioId}
          onChange={(e) => setTipoServicioId(e.target.value)}
          isInvalid={!!getValidationError('tipo_servicio_id')}
          required
        >
          <option value="">Selecciona un tipo de servicio</option>
          {tiposServicio.map((tipo) => (
            <option key={tipo.id} value={tipo.id}>
              {tipo.nombre}
            </option>
          ))}
        </Form.Control>
        {getValidationError('tipo_servicio_id') && (
          <Form.Control.Feedback type="invalid">
            {getValidationError('tipo_servicio_id')}
          </Form.Control.Feedback>
        )}
      </Form.Group>

      <Form.Group controlId="etapaId" className="mb-3">
        <Form.Label>Etapa</Form.Label>
        <Form.Control
          as="select"
          value={etapaId}
          onChange={handleEtapaChange}
          isInvalid={!!getValidationError('etapa_id')}
          required
        >
          <option value="">Selecciona una etapa</option>
          {Array.isArray(etapas) && etapas.map((etapa) => (
            <option key={etapa.id} value={etapa.id}>
              {etapa.nombre || `Etapa ${etapa.id}`}
            </option>
          ))}
        </Form.Control>
        <Form.Text className="text-muted">
          Al seleccionar una etapa, el mapa se centrará automáticamente en su ubicación.
        </Form.Text>
        {getValidationError('etapa_id') && (
          <Form.Control.Feedback type="invalid">
            {getValidationError('etapa_id')}
          </Form.Control.Feedback>
        )}
      </Form.Group>

      <Form.Group controlId="ubicacion" className="mb-3">
        <Form.Label>Ubicación</Form.Label>
        <Form.Control
          type="text"
          placeholder="Ej. Calle Principal, 123"
          value={ubicacion}
          onChange={(e) => setUbicacion(e.target.value)}
          isInvalid={!!getValidationError('ubicacion')}
          required
        />
        {getValidationError('ubicacion') && (
          <Form.Control.Feedback type="invalid">
            {getValidationError('ubicacion')}
          </Form.Control.Feedback>
        )}
      </Form.Group>

      <Form.Group className="mb-5">
        <Form.Label>Selecciona la ubicación en el mapa</Form.Label>
        <MapLocationPicker 
          key={mapKey}
          onLocationSelect={handleLocationSelect} 
          initialPosition={[
            latitud ? parseFloat(latitud) :38.845329725344044, 
            longitud ? parseFloat(longitud) :  -0.11281582444679437
          ]} 
        />
      </Form.Group>

      <Form.Group controlId="coordenadas" className="mb-3">
        <Form.Label>Coordenadas seleccionadas</Form.Label>
        <div className="d-flex gap-2">
          <Form.Control
            type="text"
            placeholder="Latitud"
            value={latitud}
            isInvalid={!!getValidationError('latitud')}
            readOnly
            required
          />
          <Form.Control
            type="text"
            placeholder="Longitud"
            value={longitud}
            isInvalid={!!getValidationError('longitud')}
            readOnly
            required
          />
        </div>
        {(getValidationError('latitud') || getValidationError('longitud')) && (
          <div className="text-danger mt-1">
            {getValidationError('latitud') || getValidationError('longitud')}
          </div>
        )}
        <Form.Text className="text-muted mt-2">
          Coordenadas seleccionadas automáticamente desde el mapa o la etapa.
        </Form.Text>
      </Form.Group>

      <Button 
        variant="primary" 
        type="submit" 
        disabled={isLoading}
      >
        {isLoading ? "Guardando..." : "Guardar Servicio"}
      </Button>
    </Form>
  );
}

export default AddServiceForm;