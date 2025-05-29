import React ,{Navigate} from "react";
import { useAuth0 } from "@auth0/auth0-react";
import { Container, Row, Col, Card, Button } from "react-bootstrap";
import logo from "../../components/img/LogoRallyGO.png";

const LoginPage = () => {
  const { loginWithRedirect, isAuthenticated, isLoading } = useAuth0();

  if (isLoading) {
    return (
      <div className="d-flex justify-content-center align-items-center" style={{ height: "100vh" }}>
        <div className="spinner-border text-primary" role="status">
          <span className="visually-hidden">Cargando...</span>
        </div>
      </div>
    );
  }

  if (isAuthenticated) {
    return <Navigate to="/" replace />;
  }

  return (
    <Container className="mt-5">
      <Row className="justify-content-center">
        <Col xs={12} md={6} lg={5}>
          <Card className="shadow">
            <Card.Body className="p-4">
              <div className="text-center mb-4">
                <img 
                  src={logo}
                  alt="RallyGO Logo" 
                  style={{ maxWidth: "150px" }} 
                />
                <h3 className="mt-4">Acceso Administración</h3>
                <p className="text-muted">
                  Inicia sesión para gestionar servicios
                </p>
              </div>
              
              <Button 
                variant="primary" 
                size="lg" 
                className="w-100" 
                onClick={() => loginWithRedirect({ 
                  redirectUri: window.location.origin + '/admin/servicios' 
                })}
              >
                Iniciar Sesión
              </Button>
              
              <div className="text-center mt-4">
                <Button 
                  variant="link" 
                  onClick={() => window.location.href = '/'}
                >
                  Volver a la página principal
                </Button>
              </div>
            </Card.Body>
          </Card>
        </Col>
      </Row>
    </Container>
  );
};

export default LoginPage;