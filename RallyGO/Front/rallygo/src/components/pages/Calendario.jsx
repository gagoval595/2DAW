import { useState, useEffect } from 'react';
import { Table, Container, Card, Pagination } from 'react-bootstrap';
import axios from 'axios';
import '../../App.css';

function Calendario() {
  const [events, setEvents] = useState([]);
  const [paginaActualWRC, setpaginaActualWRC] = useState(1);
  const [paginaActualSCER, setpaginaActualSCER] = useState(1);
  const eventsPerPage = 4;

  useEffect(() => {
    const fetchEvents = async () => {
      try {
        const response = await axios.get('http://localhost:8000/api/etapa');
        setEvents(response.data.etapas);
      } catch (error) {
        console.error('Error fetching events:', error);
      }
    };

    fetchEvents();
  }, []);

  const wrc = events.filter(event => event.campeonato.tipo === "WRC");
  const scer = events.filter(event => event.campeonato.tipo === "S-CER");

  const EventCard = ({ event, index }) => (
    <Card className="mb-3">
      <Card.Body>
        <div className="text-center">
          <p className="mb-2">Etapa {String(index + 1).padStart(2, '0')}</p>
          <h5>{event.nombre}</h5>
          <p className="mb-2">{event.fecha}</p>
          <p className="mb-3">{event.pais}</p>
          <img src={event.logo} alt={`Logo ${event.nombre}`} className="rally-logo mb-2" height="40"/>
        </div>
      </Card.Body>
    </Card>
  );

  const EventTable = ({ events, title, paginaActual, setpaginaActual }) => {
    const indexUltimo = paginaActual * eventsPerPage;
    const indexPrimero = indexUltimo - eventsPerPage;
    const eventos = events.slice(indexPrimero, indexUltimo);
    const recuentoPaginas = Math.ceil(events.length / eventsPerPage);

    const paginate = (pageNumber) => setpaginaActual(pageNumber);

    return (
      <div className="mb-5">
        <h2 className="text-center mb-4">{title}</h2>
        <div className="d-none d-md-block">
          <div className="table-responsive">
            <Table striped hover className="align-middle">
              <thead>
                <tr className="text-center">
                  <th>Etapa</th>
                  <th>Nombre</th>
                  <th>Fechas</th>
                  <th>País</th>
                  <th className='d-lg-block d-md-none'>Logo</th>
                </tr>
              </thead>
              <tbody>
                {events.map((event, index) => (
                  <tr key={event.id} className={index % 2 === 0 ? 'bg-light' : ''}>
                    <td className="text-center">{String(index + 1).padStart(2, '0')}</td>
                    <td className='text-center'>{event.nombre}</td>
                    <td className="text-center">{event.fecha}</td>
                    <td className="text-center">{event.pais}</td>
                    <td className="text-center d-lg-block d-md-none">
                      <img src={event.logo} alt={`Logo ${event.nombre}`} className="rally-logo"/>
                    </td>
                  </tr>
                ))}
              </tbody>
            </Table>
          </div>
        </div>

        <div className="d-md-none">
          {eventos.map((event, index) => (
            <EventCard 
              key={event.id} 
              event={event} 
              index={indexPrimero + index}
            />
          ))}

          <div className="d-flex justify-content-center mt-3">
            <Pagination>
              {Array.from({ length: recuentoPaginas }).map((_, index) => (
                <Pagination.Item
                  key={index + 1}
                  active={index + 1 === paginaActual}
                  onClick={() => paginate(index + 1)}
                >
                  {index + 1}
                </Pagination.Item>
              ))}
            </Pagination>
          </div>
        </div>
      </div>
    );
  };

  return (
    <Container className="py-4">
      <EventTable 
        events={wrc} title="CALENDARIO WRC" 
        paginaActual={paginaActualWRC}
        setpaginaActual={setpaginaActualWRC}
      />
      <EventTable 
        events={scer} 
        title="CALENDARIO S-CER" 
        paginaActual={paginaActualSCER}
        setpaginaActual={setpaginaActualSCER}
      />
    </Container>
  );
}

export default Calendario;