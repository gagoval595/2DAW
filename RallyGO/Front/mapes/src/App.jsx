// src/App.js
import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Header from "./components/Header";
import Footer from "./components/Footer";
import Home from "./components/pages/Home";
import Calendario from "./components/pages/Calendario";
import Equipos from "./components/pages/Equipos";
import Galeria from "./components/pages/Galeria";
import Servicios from "./components/pages/Servicios";
import Contacto from "./components/pages/Contacto";

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
