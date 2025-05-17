import { useState, useEffect } from "react";
import axios from 'axios';
import "bootstrap/dist/css/bootstrap.min.css";

function Servicios() {
  const [tiposServicio, setTiposServicio] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  
  // Función para construir URLs completas
  const getFullUrl = (path) => {
    if (!path) return null;
    if (path.startsWith('http')) return path;
    return `http://localhost:8000/${path}`;
  };

  // Función para obtener imagen predeterminada según tipo
  const getDefaultImage = (tipoStr) => {
    if (!tipoStr) return "/assets/localizar.png";
    
    const lowerType = tipoStr.toLowerCase();
    const availableTypes = ['hotel', 'parquing', 'camping', 'apartamento'];
    
    if (availableTypes.includes(lowerType)) {
      return `/assets/${lowerType}-default.jpg`;
    }
    
    return "/assets/localizar.png";
  };

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get('http://localhost:8000/api/tipo-servicio');
        console.log("Datos recibidos:", response.data);
        setTiposServicio(response.data.tipos);
        setLoading(false);
      } catch (err) {
        console.error("Error cargando datos:", err);
        setError('Error al cargar los servicios');
        setLoading(false);
      }
    };

    fetchData();
  }, []);

  if (loading) return <div className="container text-center py-5"><h2>Cargando servicios...</h2></div>;
  if (error) return <div className="container text-center py-5"><h2>{error}</h2></div>;

  return (
    <div className="container">
      <h1 className="text-center my-4">Servicios disponibles</h1>

      {tiposServicio.map((tipo) => (
        <section key={tipo.id} className="mb-5">
          <h2 className="mb-4">{tipo.tipo}</h2>
          <div className="row g-4">
            {tipo.servicios?.map((servicio) => (
              <div className="col-lg-4 col-md-6 col-sm-12" key={servicio.id}>
                <div className="card h-100">
                  <img 
                    className="card-img-top" 
                    src={
                      // Prioridad: foto del servicio > foto del tipo > imagen por defecto según tipo
                      servicio.foto_url || 
                      (servicio.fotos && getFullUrl(servicio.fotos.ruta)) ||
                      tipo.foto_url || 
                      (tipo.foto && getFullUrl(tipo.foto)) || 
                      getDefaultImage(tipo.tipo)
                    }
                    alt={servicio.ubicacion || tipo.nombre}
                    style={{ height: '200px', objectFit: 'cover' }}
                    onError={(e) => {
                      console.log("Error cargando imagen:", e.target.src);
                      e.target.src = getDefaultImage(tipo.tipo);
                    }}
                  />
                  <div className="card-body d-flex flex-column">
                    <h5 className="card-title">{tipo.nombre}</h5>
                    <div className="card-text mb-3">
                      {tipo.descripcion || 'Sin descripción disponible'}
                    </div>
                    <div className="mt-auto">
                      <button className="btn btn-primary btn-roig">Reservar</button>
                      <button className="btn btn-secondary mx-2 btn-blau">Ver más</button>
                    </div>
                  </div>
                </div>
              </div>
            ))}
          </div>
        </section>
      ))}
    </div>
  );
}

export default Servicios;