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
      console.log("Archivo seleccionado:", file.name, file.type, file.size);

      // Validar tipo de archivo
      const validTypes = [
        "image/jpeg",
        "image/png",
        "image/gif",
        "image/jpg",
      ];
      if (!validTypes.includes(file.type)) {
        setMessage({
          text: "Por favor selecciona un archivo de imagen válido (JPEG, PNG o GIF)",
          type: "danger",
        });
        e.target.value = ""; // Limpiar input
        return;
      }

      // Validar tamaño (máximo 5MB)
      if (file.size > 5 * 1024 * 1024) {
        setMessage({
          text: "La imagen es demasiado grande. Máximo 5MB permitido.",
          type: "danger",
        });
        e.target.value = ""; // Limpiar input
        return;
      }

      setFoto(file);

      // Generar vista previa
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

      console.log("=== DATOS ANTES DE ENVIAR ===");
      console.log("Nombre:", nombre);
      console.log("Descripción:", descripcion);
      console.log("Foto:", foto);

      const formData = new FormData();
      
      const nombreLimitado = nombre.trim().substring(0, 255);
      const descripcionLimitada = descripcion.trim().substring(0, 255) || "Sin descripción";
      
      const tipoCorto = nombreLimitado.substring(0, 10).toUpperCase();
      
      console.log("Datos procesados:");
      console.log("- Tipo:", tipoCorto);
      console.log("- Nombre:", nombreLimitado, `(${nombreLimitado.length} caracteres)`);
      console.log("- Descripción:", descripcionLimitada, `(${descripcionLimitada.length} caracteres)`);
      
      formData.append("tipo", tipoCorto);
      formData.append("nombre", nombreLimitado);
      formData.append("descripcion", descripcionLimitada);

      if (foto) {
        formData.append("foto", foto);
      }

      console.log("=== CONTENIDO DE FORMDATA ===");
      for (let pair of formData.entries()) {
        if (pair[1] instanceof File) {
          console.log(`${pair[0]}: [ARCHIVO] ${pair[1].name} (${pair[1].size} bytes)`);
        } else {
          console.log(`${pair[0]}: "${pair[1]}" (${pair[1].length} caracteres)`);
        }
      }

      console.log("=== ENVIANDO SOLICITUD ===");
      const response = await apiService.createTipoServicio(formData);
      
      console.log("=== RESPUESTA EXITOSA ===");
      console.log(response.data);

      setNombre("");
      setDescripcion("");
      setFoto(null);
      setPreview(null);
      
      const fileInput = document.querySelector('input[type="file"]');
      if (fileInput) fileInput.value = '';

      if (onTipoCreated && typeof onTipoCreated === "function") {
        await onTipoCreated();
      }

      setMessage({
        text: "¡Tipo de servicio creado correctamente!",
        type: "success",
      });
      setSuccess(true);
      
    } catch (error) {
      console.error("=== ERROR DETECTADO ===");
      console.error("Error completo:", error);
      
      let errorMessage = "Error desconocido";
      
      if (error.response) {
        console.error("Status:", error.response.status);
        console.error("Data:", error.response.data);
        
        if (error.response.data?.error) {
          errorMessage = error.response.data.error;
        } else if (error.response.data?.message) {
          errorMessage = error.response.data.message;
        }
        
        if (errorMessage.includes('Data truncated')) {
          errorMessage = "Los datos son demasiado largos. Se han ajustado automáticamente.";
        }
      } else {
        errorMessage = error.message || "Error de conexión";
      }
      
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
            maxLength={100}
            required
          />
          <Form.Text className="text-muted">
            El nombre debe ser descriptivo del tipo de servicio (máx. 100 caracteres) 
            - Quedan: {100 - nombre.length} caracteres
          </Form.Text>
          {nombre.length > 90 && (
            <Form.Text className="text-warning">
              Advertencia: Te quedan pocos caracteres disponibles
            </Form.Text>
          )}
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
            maxLength={255} 
          />
          <Form.Text className="text-muted">
            Descripción detallada del tipo de servicio (máx. 255 caracteres)
            - Quedan: {255 - descripcion.length} caracteres
          </Form.Text>
          {descripcion.length > 240 && (
            <Form.Text className="text-warning">
              Advertencia: Te quedan pocos caracteres disponibles
            </Form.Text>
          )}
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
            Sube una imagen representativa para este tipo de servicio (máx. 5MB)
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