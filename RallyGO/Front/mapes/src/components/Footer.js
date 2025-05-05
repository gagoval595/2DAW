import { Container, Row, Col } from 'react-bootstrap';

function Footer() {
  return (
    <footer className="bg-dark text-white mt-4">
      <Container>
        <Row className="py-3">
          <Col sm={12} md={6}>
            <p>&copy; 2025 RallyGO</p>
          </Col>
          <Col sm={12} md={6} className="text-md-end">
            <p>Redes Sociales | Política de Privacidad</p>
          </Col>
        </Row>
      </Container>
    </footer>
  );
}

export default Footer;
