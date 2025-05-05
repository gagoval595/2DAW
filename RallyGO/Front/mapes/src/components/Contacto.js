import { Container, Row, Col, Form, Button } from 'react-bootstrap';

function Contact() {
  return (
    <Container className="mt-4">
      <Row>
        <Col>
          <h2>Contacta'ns</h2>
          <Form>
            <Form.Group controlId="formName">
              <Form.Label>Nom</Form.Label>
              <Form.Control type="text" placeholder="El teu nom" />
            </Form.Group>

            <Form.Group controlId="formEmail" className="mt-3">
              <Form.Label>Email</Form.Label>
              <Form.Control type="email" placeholder="El teu correu electrònic" />
            </Form.Group>

            <Form.Group controlId="formMessage" className="mt-3">
              <Form.Label>Missatge</Form.Label>
              <Form.Control as="textarea" rows={3} placeholder="Escriu el teu missatge" />
            </Form.Group>

            <Button variant="primary" type="submit" className="mt-3">
              Enviar
            </Button>
          </Form>
        </Col>
      </Row>
    </Container>
  );
}

export default Contact;
