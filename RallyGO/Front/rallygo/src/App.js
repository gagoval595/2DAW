import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Home from "./components/pages/Home";
import Calendario from "./components/pages/Calendario";
import Equipos from "./components/pages/Equipos";
import Galeria from "./components/pages/Galeria";
import Servicios from "./components/pages/Servicios";
import Contacto from "./components/pages/Contacto";
import Header from "./common/Header";
import Footer from "./common/Footer";
import AdminServicios from "./components/pages/AdminServicios";

function App() {
  return (
    <Router>
      <Header />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/calendario" element={<Calendario />} />
        <Route path="/equipos" element={<Equipos />} />
        <Route path="/servicios" element={<Servicios />} />
        <Route path="/galeria" element={<Galeria />} />
        <Route path="/contacto" element={<Contacto />} />
        <Route path="/galeria" element={<Galeria />} />
        <Route path="/admin/servicios" element={<AdminServicios />} />
      </Routes>
      <div className="mt-5">
        <Footer />
      </div>
    </Router>
  );
}

export default App;
