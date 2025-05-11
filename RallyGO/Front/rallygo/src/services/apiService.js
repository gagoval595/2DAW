import api from '../api';

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

    // Fotos
    getFotosServicio: (servicioId) => api.get(`/servicio/${servicioId}/foto`),
    getGaleriaFotos: () => api.get('/galeria'),
};