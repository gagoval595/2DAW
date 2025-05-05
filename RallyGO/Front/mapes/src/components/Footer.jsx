import React from "react";
import { Container, Row, Col } from "react-bootstrap";

function Footer() {
  return (
    <footer className="bg-dark text-white p-3 mt-5">
      <Container>
        <Row>
          <Col className="text-center">
            <p>&copy; 2025 RallyGO. Tots els drets reservats.</p>
          </Col>
        </Row>
      </Container>
    </footer>
  );
}

export default Footer;
