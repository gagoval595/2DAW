import React, { useState } from "react";
import { Form, Button, Alert, Spinner } from "react-bootstrap";
import { apiService } from "../services/apiService";

function TipoServicioForm({ onTipoCreated }) {
  const [nombre, setNombre] = useState("");
  const [descripcion, setDescripcion] = useState("");
  const [foto, setFoto] = useState(null);
  const [preview, setPreview] = useState(null);
  const [isLoading, setIsLoading] = useState(false);
  const [message, setMessage] = useState({ text: "", type: "" });
  const [success, setSuccess] = useState(false);

  const handleFileChange = (e) => {
    const file = e.target.files[0];
    if (file) {
      setFoto(file);
      const reader = new FileReader();
      reader.onloadend = () => {
        setPreview(reader.result);
      };
      reader.readAsDataURL(file);
    } else {
      setFoto(null);
      setPreview(null);
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setIsLoading(true);
    setMessage({ text: "", type: "" });
    setSuccess(false);

    try {
      if (!nombre.trim()) {
        throw new Error("El nombre es obligatorio");
      }

      const formData = new FormData();
      formData.append("nombre", nombre.trim());

      if (descripcion.trim()) {
        formData.append("descripcion", descripcion.trim());
      }

      if (foto) {
        formData.append("foto", foto);
      }

      const response = await apiService.createTipoServicio(formData);
      console.log("Tipo de servicio creado:", response.data);

      setNombre("");
      setDescripcion("");
      setFoto(null);
      setPreview(null);

      if (onTipoCreated && typeof onTipoCreated === "function") {
        await onTipoCreated();
      }

      setMessage({
        text: "Tipo de servicio creado correctamente",
        type: "success",
      });
      setSuccess(true);
    } catch (error) {
      console.error("Error al crear tipo de servicio:", error);

      const errorMessage =
        error.response?.data?.message ||
        error.response?.data?.error ||
        error.message ||
        "Error al crear el tipo de servicio";

      setMessage({ text: errorMessage, type: "danger" });
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <div>
      {success && (
        <Alert variant="success" className="mb-4">
          <Alert.Heading>¡Tipo de servicio creado con éxito!</Alert.Heading>
          <p>
            El tipo de servicio se ha creado correctamente. Ahora puedes:
          </p>
          <ul>
            <li>Crear otro tipo de servicio</li>
            <li>
              Ir a la pestaña de Servicios para crear servicios de este tipo
            </li>
          </ul>
        </Alert>
      )}

      <Form onSubmit={handleSubmit}>
        {message.text && !success && (
          <Alert variant={message.type} className="mb-4">
            {message.text}
          </Alert>
        )}

        <Form.Group className="mb-3">
          <Form.Label>Nombre *</Form.Label>
          <Form.Control
            type="text"
            placeholder="Ejemplo: Hotel, Restaurante, Parking, etc."
            value={nombre}
            onChange={(e) => setNombre(e.target.value)}
            disabled={isLoading}
            required
          />
          <Form.Text className="text-muted">
            El nombre debe ser descriptivo del tipo de servicio
          </Form.Text>
        </Form.Group>

        <Form.Group className="mb-3">
          <Form.Label>Descripción (opcional)</Form.Label>
          <Form.Control
            as="textarea"
            rows={3}
            placeholder="Descripción del tipo de servicio"
            value={descripcion}
            onChange={(e) => setDescripcion(e.target.value)}
            disabled={isLoading}
          />
        </Form.Group>

        <Form.Group className="mb-4">
          <Form.Label>Imagen (opcional)</Form.Label>
          <Form.Control
            type="file"
            accept="image/*"
            onChange={handleFileChange}
            disabled={isLoading}
          />
          <Form.Text className="text-muted">
            Sube una imagen representativa para este tipo de servicio
          </Form.Text>

          {preview && (
            <div className="mt-3">
              <img
                src={preview}
                alt="Vista previa"
                style={{ maxWidth: "100%", maxHeight: "200px" }}
                className="border rounded"
              />
            </div>
          )}
        </Form.Group>

        <Button
          variant="primary"
          type="submit"
          disabled={isLoading || !nombre.trim()}
          className="px-4"
        >
          {isLoading ? (
            <>
              <Spinner
                as="span"
                animation="border"
                size="sm"
                role="status"
                aria-hidden="true"
                className="me-2"
              />
              Guardando...
            </>
          ) : (
            "Guardar Tipo de Servicio"
          )}
        </Button>
      </Form>
    </div>
  );
}

export default TipoServicioForm;