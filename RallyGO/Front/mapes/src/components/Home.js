import { Container, Row, Col, Button } from 'react-bootstrap';

function Home() {
  return (
    <Container className="mt-4">
      <Row>
        <Col>
          <h1>Benvinguts a Mapes</h1>
          <p>Mapes és una aplicació web que et permet visualitzar i interactuar amb mapes.</p>
          <Button variant="primary" href="#map">
            Veure el Mapa
          </Button>
        </Col>
      </Row>
    </Container>
  );
}

export default Home;
