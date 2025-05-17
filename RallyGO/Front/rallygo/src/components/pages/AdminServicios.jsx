import React, { useState } from 'react';
import { Container, Row, Col, Tab, Nav } from 'react-bootstrap';
import AddServiceForm from '../Form';
import TipoServicioForm from '../TipoServicioForm';

function AdminServicios() {
  return (
    <Container className="my-4">
      <h1 className="mb-4">Administración de Servicios</h1>
      
      <Tab.Container defaultActiveKey="servicios">
        <Row>
          <Col sm={3}>
            <Nav variant="pills" className="flex-column">
              <Nav.Item>
                <Nav.Link eventKey="servicios">Servicios</Nav.Link>
              </Nav.Item>
              <Nav.Item>
                <Nav.Link eventKey="tipos">Tipos de Servicio</Nav.Link>
              </Nav.Item>
            </Nav>
          </Col>
          <Col sm={9}>
            <Tab.Content>
              <Tab.Pane eventKey="servicios">
                <h3 className="mb-3">Crear Nuevo Servicio</h3>
                <AddServiceForm />
              </Tab.Pane>
              <Tab.Pane eventKey="tipos">
                <h3 className="mb-3">Crear Nuevo Tipo de Servicio</h3>
                <TipoServicioForm />
              </Tab.Pane>
            </Tab.Content>
          </Col>
        </Row>
      </Tab.Container>
    </Container>
  );
}

export default AdminServicios;