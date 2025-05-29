import api from '../api';
import axios from 'axios';

export const apiService = {
    // Campeonatos
    getCampeonatos: () => api.get('/campeonato'),
    getCampeonato: (id) => api.get(`/campeonato/${id}`),

    // Etapas
    getEtapas: () => api.get('/etapa'),
    getEtapa: (id) => api.get(`/etapa/${id}`),

    // Servicios
    getServicios: () => api.get('/servicio'),
    getServiciosPorEtapa: (etapaId) => api.get(`/servicio?etapa_id=${etapaId}`),
    getTiposServicio: () => api.get('/tipo-servicio'),
    createServicio: async (servicioData) => {
        try {
            const testResponse = await api.post('/test-servicio', {
                test: true,
                data: servicioData
            });
            console.log("Test response:", testResponse);

            // Si el test funciona, enviar los datos reales
            return api.post('/servicio', servicioData);
        } catch (error) {
            console.error("Test error:", error.response?.data || error);
            throw error;
        }
    },
    updateServicio: (id, servicioData) => api.put(`/servicio/${id}`, servicioData),
    deleteServicio: (id) => api.delete(`/servicio/${id}`),

    // Tipos de servicio
    getTipoServicio: (id) => api.get(`/tipo-servicio/${id}`),
    createTipoServicio(formData) {
        console.log("Enviando datos a la API:", [...formData.entries()].map(pair => `${pair[0]}: ${pair[1]}`));
        
        return api.post('/tipo-servicio', formData, {
            headers: {
                'Content-Type': 'multipart/form-data',
                'Accept': 'application/json'
            }
        });
    },
    updateTipoServicio: (id, tipoData) => api.put(`/tipo-servicio/${id}`, tipoData),
    deleteTipoServicio: (id) => api.delete(`/tipo-servicio/${id}`),

    // Fotos
    getFotosServicio: (servicioId) => api.get(`/servicio/${servicioId}/foto`),
    getGaleriaFotos: () => api.get('/galeria'),
};