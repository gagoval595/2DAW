// src/App.js
import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Header from "./components/Header";
import Footer from "./components/Footer";
import Home from "./pages/Home";
import Calendario from "./pages/Calendario";
import Equipos from "./pages/Equipos";
import Galeria from "./pages/Galeria";
import Servicios from "./pages/Servicios";
import Contacto from "./pages/Contacto";

function App() {
  return (
    <Router>
      <Header />
      <div className="main-content">
        <Switch>
          <Route exact path="/" component={Home} />
          <Route path="/calendario" component={Calendario} />
          <Route path="/equipos" component={Equipos} />
          <Route path="/fotos" component={Galeria} />
          <Route path="/servicios" component={Servicios} />
          <Route path="/contacto" component={Contacto} />
        </Switch>
      </div>
      <Footer />
    </Router>
  );
}

export default App;
