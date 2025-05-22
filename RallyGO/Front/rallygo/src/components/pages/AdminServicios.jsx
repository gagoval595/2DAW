import React, { useState, useEffect } from 'react';
import AddServiceForm from '../Form';
import TipoServicioForm from '../TipoServicioForm';
import GaleriaForm from '../GaleriaForm';
import { apiService } from '../../services/apiService';

function AdminServicios() {
  const [activeTab, setActiveTab] = useState('servicios');
  const [tiposServicio, setTiposServicio] = useState([]);
  const [loading, setLoading] = useState(true);
  
  useEffect(() => {
    const fetchTiposServicio = async () => {
      try {
        const response = await apiService.getTiposServicio();
        const tipos = Array.isArray(response.data) ? response.data : 
                    (response.data?.tipos || []);
        setTiposServicio(tipos);
        
        if (tipos.length === 0) {
          setActiveTab('tipos');
        }
        
        setLoading(false);
      } catch (error) {
        console.error("Error al cargar tipos de servicio:", error);
        setLoading(false);
      }
    };
    
    fetchTiposServicio();
  }, []);

  const handleTabChange = (tabId) => {
    if (tabId === 'servicios' && tiposServicio.length === 0) {
      alert('Primero debes crear al menos un tipo de servicio');
      setActiveTab('tipos');
    } else {
      setActiveTab(tabId);
    }
  };
  
  const handleTipoCreated = () => {
    apiService.getTiposServicio().then(response => {
      const tipos = Array.isArray(response.data) ? response.data : 
                  (response.data?.tipos || []);
      setTiposServicio(tipos);
    });
  };

  const styles = {
    container: {
      margin: '1.5rem 1rem',
      padding: '0 15px'
    },
    layout: {
      display: 'flex',
      gap: '20px'
    },
    sidebar: {
      width: '20%',
      minWidth: '200px',
      backgroundColor: '#f8f9fa',
      borderRadius: '8px',
      padding: '15px'
    },
    content: {
      width: '80%',
      flexGrow: 1
    },
    navItem: {
      marginBottom: '10px'
    },
    navLink: (isActive) => ({
      padding: '10px 15px',
      borderRadius: '5px',
      cursor: 'pointer',
      backgroundColor: isActive ? '#0d6efd' : 'transparent',
      color: isActive ? 'white' : '#212529',
      fontWeight: isActive ? 'bold' : 'normal',
      display: 'block',
      textDecoration: 'none'
    }),
    navLinkDisabled: {
      padding: '10px 15px',
      borderRadius: '5px',
      backgroundColor: 'transparent',
      color: '#6c757d',
      opacity: 0.7,
      cursor: 'not-allowed',
      display: 'block'
    }
  };

  return (
    <div style={styles.container}>
      <h1 className="mb-4">Administración de Servicios</h1>
      
      <div style={styles.layout}>
        <div style={styles.sidebar}>
          <div>
            <div style={styles.navItem}>
              <div style={tiposServicio.length === 0 ? styles.navLinkDisabled : styles.navLink(activeTab === 'servicios')} onClick={() => handleTabChange('servicios')}>
                Servicios
              </div>
            </div>

            <div style={styles.navItem}>
              <div style={styles.navLink(activeTab === 'tipos')} onClick={() => handleTabChange('tipos')}>
               Tipos de Servicio
              </div>
            </div>
            <div style={styles.navItem}>
              <div style={styles.navLink(activeTab === 'galeria')} onClick={() => handleTabChange('galeria')}>
                Galería de Fotos
              </div>
            </div>
          </div>
        </div>
        
        <div style={styles.content}>
          <div>
            <div style={{ display: activeTab === 'servicios' ? 'block' : 'none' }}>
              <h3 className="mb-3">Crear Nuevo Servicio</h3>
              <AddServiceForm />
            </div>
            
            <div style={{ display: activeTab === 'tipos' ? 'block' : 'none' }}>
              <h3 className="mb-3">Crear Nuevo Tipo de Servicio</h3>
              <TipoServicioForm onTipoCreated={handleTipoCreated} />
            </div>
            
            <div style={{ display: activeTab === 'galeria' ? 'block' : 'none' }}>
              <h3 className="mb-3">Galería de Fotos</h3>
              <GaleriaForm />
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default AdminServicios;