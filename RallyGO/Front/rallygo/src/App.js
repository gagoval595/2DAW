import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Servicios from "./components/pages/Servicios";
import Galeria from "./components/pages/Galeria";
import MapView from "./components/wrc/MapView-canarias";
import Home from "./components/pages/Home";
import Header from "./common/Header";
import Footer from "./common/Footer";

function App() {
  return (
    <Router>
      <Header />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/servicios" element={<Servicios />} />
        <Route path="/galeria" element={<Galeria />} />
        <Route path="/mapa/:etapaId" element={<MapView />} />
      </Routes>
      <div className="mt-5">
        <Footer />
      </div>
    </Router>
  );
}

export default App;
