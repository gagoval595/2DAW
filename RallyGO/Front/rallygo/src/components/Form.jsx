import React, { useState } from "react";
import { Button, Form } from "react-bootstrap";

function AddServiceForm() {
  const [serviceType, setServiceType] = useState("");
  const [serviceName, setServiceName] = useState("");
  const [description, setDescription] = useState("");
  const [photos, setPhotos] = useState([]);
  const [coordinates, setCoordinates] = useState({ lat: "", lng: "" });

  const handleSubmit = (event) => {
    event.preventDefault();

    // Aquí puedes hacer un POST a tu servidor para guardar el servicio
    const newService = {
      serviceType,
      serviceName,
      description,
      photos,
      coordinates,
    };

    console.log("Nuevo Servicio:", newService);

    // Reset form
    setServiceType("");
    setServiceName("");
    setDescription("");
    setPhotos([]);
    setCoordinates({ lat: "", lng: "" });
  };

  const handleFileChange = (event) => {
    const files = Array.from(event.target.files);
    setPhotos(files);
  };

  return (
    <Form onSubmit={handleSubmit}>
      <Form.Group controlId="serviceType">
        <Form.Label>Tipo de Servicio</Form.Label>
        <Form.Control
          as="select"
          value={serviceType}
          onChange={(e) => setServiceType(e.target.value)}
        >
          <option>Selecciona el tipo de servicio</option>
          <option value="hotel">Hotel</option>
          <option value="parking">Párquing</option>
          <option value="camping">Cámping</option>
        </Form.Control>
      </Form.Group>

      <Form.Group controlId="serviceName">
        <Form.Label>Nombre del Servicio</Form.Label>
        <Form.Control
          type="text"
          placeholder="Ej. Hotel MilFlores"
          value={serviceName}
          onChange={(e) => setServiceName(e.target.value)}
        />
      </Form.Group>

      <Form.Group controlId="description">
        <Form.Label>Descripción del Servicio</Form.Label>
        <Form.Control
          as="textarea"
          rows={3}
          value={description}
          onChange={(e) => setDescription(e.target.value)}
        />
      </Form.Group>

      <Form.Group controlId="photos">
        <Form.Label>Foto/s</Form.Label>
        <Form.Control
          type="file"
          multiple
          onChange={handleFileChange}
        />
      </Form.Group>

      <Form.Group controlId="coordinates">
        <Form.Label>Coordenadas</Form.Label>
        <Form.Control
          type="text"
          placeholder="Latitud, Longitud"
          value={`${coordinates.lat}, ${coordinates.lng}`}
          onChange={(e) => setCoordinates({ lat: e.target.value.split(',')[0], lng: e.target.value.split(',')[1] })}
        />
      </Form.Group>

      <Button variant="primary" type="submit">
        Añadir Servicio
      </Button>
    </Form>
  );
}

export default AddServiceForm;
