import { BrowserRouter as Router, Routes, Route, Navigate } from "react-router-dom";
import { useAuth0 } from "@auth0/auth0-react";
import Home from "./components/pages/Home";
import Calendario from "./components/pages/Calendario";
import Equipos from "./components/pages/Equipos";
import Galeria from "./components/pages/Galeria";
import Servicios from "./components/pages/Servicios";
import Contacto from "./components/pages/Contacto";
import Header from "./common/Header";
import Footer from "./common/Footer";
import AdminServicios from "./components/pages/AdminServicios";
import LoginPage from "./components/auth/LoginPage";

function App() {
  const { isAuthenticated, isLoading } = useAuth0();

  // Mientras se verifica la autenticación, muestra un spinner
  if (isLoading) {
    return (
      <div className="d-flex justify-content-center align-items-center vh-100">
        <div className="spinner-border text-primary" role="status">
          <span className="visually-hidden">Cargando...</span>
        </div>
      </div>
    );
  }

  return (
    <Router>
      <Header />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/calendario" element={<Calendario />} />
        <Route path="/equipos" element={<Equipos />} />
        <Route path="/galeria" element={<Galeria />} />
        <Route path="/servicios" element={<Servicios />} />
        <Route path="/contacto" element={<Contacto />} />
        
        
        <Route path="/login" element={
          !isAuthenticated ? <LoginPage /> : <Navigate to="/admin/servicios" replace />
        } />
        
        {/* Rutas de administración - requieren autenticación */}
        <Route path="/admin/*" element={
          isAuthenticated ? <AdminRoutes /> : <Navigate to="/login" replace />
        } />
        
        {/* Redirección para rutas no existentes */}
        <Route path="*" element={<Navigate to="/" replace />} />
      </Routes>
      <div className="mt-5">
        <Footer />
      </div>
    </Router>
  );
}

// Rutas de administración protegidas
function AdminRoutes() {
  return (
    <Routes>
      <Route path="servicios" element={<AdminServicios />} />
      {/* Aquí puedes agregar más rutas admin: */}
      {/* <Route path="usuarios" element={<AdminUsuarios />} /> */}
      {/* <Route path="configuracion" element={<AdminConfig />} /> */}
      
      {/* Ruta por defecto para /admin */}
      <Route path="*" element={<Navigate to="/admin/servicios" replace />} />
    </Routes>
  );
}

export default App;
