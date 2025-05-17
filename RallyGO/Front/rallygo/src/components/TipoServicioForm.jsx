import React, { useState } from "react";
import { Form, Button, Alert, Image } from "react-bootstrap";
import { apiService } from "../services/apiService";

function TipoServicioForm() {
  const [tipo, setTipo] = useState("");
  const [nombre, setNombre] = useState("");
  const [descripcion, setDescripcion] = useState("");
  const [foto, setFoto] = useState(null);
  const [icono, setIcono] = useState(null);
  const [fotoPreview, setFotoPreview] = useState(null);
  const [iconoPreview, setIconoPreview] = useState(null);
  const [isLoading, setIsLoading] = useState(false);
  const [message, setMessage] = useState({ text: "", type: "" });

  const tiposValidos = ["Hotel", "Parquing", "Camping", "Apartamento"];

  // Manejar cambio en el archivo de foto
  const handleFotoChange = (e) => {
    if (e.target.files && e.target.files[0]) {
      const selectedFile = e.target.files[0];
      setFoto(selectedFile);

      // Crear una URL para previsualizar la imagen
      const reader = new FileReader();
      reader.onload = (e) => {
        setFotoPreview(e.target.result);
      };
      reader.readAsDataURL(selectedFile);
    }
  };

  // Manejar cambio en el archivo de icono
  const handleIconoChange = (e) => {
    if (e.target.files && e.target.files[0]) {
      const selectedFile = e.target.files[0];
      setIcono(selectedFile);

      const reader = new FileReader();
      reader.onload = (e) => {
        setIconoPreview(e.target.result);
      };
      reader.readAsDataURL(selectedFile);
    }
  };

  const handleSubmit = async (event) => {
    event.preventDefault();
    setIsLoading(true);
    setMessage({ text: "", type: "" });

    try {
      // Crear un FormData para enviar los archivos
      const formData = new FormData();
      formData.append("tipo", tipo);
      formData.append("nombre", nombre);
      formData.append("descripcion", descripcion);

      if (foto) {
        formData.append("foto", foto);
      }

      if (icono) {
        formData.append("icono", icono);
      }

      // Mostrar los datos que se envían para depuración
      console.log("Datos a enviar:", {
        tipo,
        nombre,
        descripcion,
        foto: foto ? foto.name : "ninguna",
        icono: icono ? icono.name : "ninguno",
      });

      const response = await apiService.createTipoServicio(formData);
      console.log("Respuesta exitosa:", response);

      // Reset form
      setTipo("");
      setNombre("");
      setDescripcion("");
      setFoto(null);
      setIcono(null);
      setFotoPreview(null);
      setIconoPreview(null);

      setMessage({
        text: "Tipo de servicio creado correctamente",
        type: "success",
      });
    } catch (error) {
      console.error("Error al crear tipo de servicio:", error);
      // Mostrar más detalles del error
      let errorMessage = "Error al crear el tipo de servicio";

      if (error.response) {
        // El servidor respondió con un código de estado diferente de 2xx
        console.error("Datos del error:", error.response.data);
        console.error("Estado HTTP:", error.response.status);

        if (error.response.data && error.response.data.message) {
          errorMessage += `: ${error.response.data.message}`;
        } else if (error.response.data && error.response.data.error) {
          errorMessage += `: ${error.response.data.error}`;
        }
      }

      setMessage({
        text: errorMessage,
        type: "danger",
      });
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <Form onSubmit={handleSubmit}>
      {message.text && <Alert variant={message.type}>{message.text}</Alert>}

      <Form.Group controlId="tipo" className="mb-3">
        <Form.Label>Categoría de Servicio</Form.Label>
        <Form.Control
          as="select"
          value={tipo}
          onChange={(e) => setTipo(e.target.value)}
          required
        >
          <option value="">Selecciona una categoría</option>
          {tiposValidos.map((t) => (
            <option key={t} value={t}>
              {t}
            </option>
          ))}
        </Form.Control>
      </Form.Group>

      <Form.Group controlId="nombre" className="mb-3">
        <Form.Label>Nombre</Form.Label>
        <Form.Control
          type="text"
          placeholder="Nombre del tipo de servicio"
          value={nombre}
          onChange={(e) => setNombre(e.target.value)}
          required
        />
      </Form.Group>

      <Form.Group controlId="descripcion" className="mb-3">
        <Form.Label>Descripción</Form.Label>
        <Form.Control
          as="textarea"
          rows={3}
          value={descripcion}
          onChange={(e) => setDescripcion(e.target.value)}
          required
        />
      </Form.Group>

      <Form.Group controlId="foto" className="mb-3">
        <Form.Label>Foto</Form.Label>
        <Form.Control
          type="file"
          accept="image/*"
          onChange={handleFotoChange}
        />
        {fotoPreview && (
          <div className="mt-2">
            <p>Vista previa:</p>
            <Image
              src={fotoPreview}
              style={{ maxWidth: "200px", maxHeight: "200px" }}
              thumbnail
            />
          </div>
        )}
      </Form.Group>

      <Form.Group controlId="icono" className="mb-3">
        <Form.Label>Icono</Form.Label>
        <Form.Control
          type="file"
          accept="image/*"
          onChange={handleIconoChange}
        />
        {iconoPreview && (
          <div className="mt-2">
            <p>Vista previa:</p>
            <Image
              src={iconoPreview}
              style={{ maxWidth: "100px", maxHeight: "100px" }}
              thumbnail
            />
          </div>
        )}
      </Form.Group>

      <Button variant="primary" type="submit" disabled={isLoading}>
        {isLoading ? "Guardando..." : "Guardar Tipo de Servicio"}
      </Button>
    </Form>
  );
}

export default TipoServicioForm;