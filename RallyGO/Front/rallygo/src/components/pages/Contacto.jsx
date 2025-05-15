import { useState } from "react";
import { Form, Button } from "react-bootstrap";
import { MapContainer, TileLayer, Marker, Popup } from "react-leaflet";
import "leaflet/dist/leaflet.css";
import L from "leaflet";

const iconoRallyGO = new L.Icon({
  iconUrl: require('../img/icona.jpg'),
  iconSize: [30, 30],
  iconAnchor: [20, 40],
  popupAnchor: [0, -40],
  className: 'rounded-circle'
});

function Contacto() {
  const [formData, setFormData] = useState({
    nombre: "",
    correo: "",
    tipoConsulta: "",
    mensaje: "",
  });

  const handleSubmit = (e) => {
    e.preventDefault();
    console.log(formData);
  };

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prevState) => ({
      ...prevState,
      [name]: value,
    }));
  };

  const position = [38.845316929516116, -0.11278598675761838]; 

  return (
    <div className="container">
      <h1 className="text-center mb-4">Contacta con nosotros</h1>
      <p className="text-center mb-5">
        ¿Tienes alguna duda? Estamos aquí para ayudarte durante tu aventura de
        rally
      </p>

      <div className="row">
        <div className="col-lg-7 col-sm-12 ">
          <div className="form-container">
            <Form onSubmit={handleSubmit}>
              <Form.Group className="mb-3">
                <Form.Label>Nombre completo</Form.Label>
                <Form.Control
                  type="text"
                  name="nombre"
                  value={formData.nombre}
                  onChange={handleChange}
                  required
                />
              </Form.Group>

              <Form.Group className="mb-3">
                <Form.Label>Correo electrónico</Form.Label>
                <Form.Control
                  type="email"
                  name="correo"
                  value={formData.correo}
                  onChange={handleChange}
                  required
                />
              </Form.Group>

              <Form.Group className="mb-3">
                <Form.Label>Tipo de consulta</Form.Label>
                <Form.Select
                  name="tipoConsulta"
                  value={formData.tipoConsulta}
                  onChange={handleChange}
                  required
                >
                  <option value="">Selecciona una opción</option>
                  <option value="general">Consulta general</option>
                  <option value="tecnica">Soporte técnico</option>
                  <option value="comercial">Información comercial</option>
                </Form.Select>
              </Form.Group>

              <Form.Group className="mb-3">
                <Form.Label>Mensaje</Form.Label>
                <Form.Control 
                  as="textarea"
                  rows={4}
                  name="mensaje"
                  value={formData.mensaje}
                  onChange={handleChange}
                  required
                />
              </Form.Group>

              <Button type="submit" className="px-4 btn-blau">
                Enviar mensaje
              </Button>
            </Form>
          </div>
        </div>

        <div className="col-lg-5 col-sm-12 mt-sm-3">
          <h3 className="mb-4">Información de contacto</h3>
          <p><b>Correo:</b> gabrielrallyGO@gmail.com</p>
          <p><b>Teléfono:</b> 651 332 252</p>
          <p><b>Ubicación:</b> Pego, Alacant</p>
          <div className="d-flex gap-3 justify-content-start align-items-center">
            <a href="https://www.instagram.com/rallygo.es/" target="_blank" className="links">
              <i className="bi bi-instagram"></i>
            </a>
            <a href="https://x.com/Gag0val" target="_blank" className="links">
              <i className="bi bi-twitter fs-4"></i>
            </a>
          </div>

          <h3 className="mt-1 mb-3">Mapa</h3>
          <div className="map-container">
            <MapContainer center={position} zoom={13} className="w-100 mapaContacto" >
              <TileLayer
                url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
                attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
              />
              <Marker position={position} icon={iconoRallyGO}>
                <Popup>RallyGO<br/>Pego, Alacant</Popup>
              </Marker>
            </MapContainer>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Contacto;
