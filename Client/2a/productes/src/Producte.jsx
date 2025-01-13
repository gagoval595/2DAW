import { useState, useEffect } from 'react'
import { url, postData, getData, deleteData } from './crud'
import { Formik, Form, Field } from 'formik'
import * as yup from 'yup'

import { Button, Modal } from 'react-bootstrap';

const ProducteSchema = yup.object().shape({
  name: yup.string().min(4, 'Valor mínim de 4 caracters').max(50, 'Valor mºaxim de 50 caracters').required('Valor Requerit.'),
  description: yup.string().min(4, 'Valor mínim de 4 caracters').max(60, 'Valor màxim de 60 caracters'),
  volumen: yup.number().positive('El valor ha de ser positiu').required('Valor Requerit.'),
  weight: yup.number().positive('El valor ha de ser positiu').required('Valor Requerit.'),
  lotorserial: yup.string().matches(/(Lot|Serial|Non)/),
  sku: yup.string().matches(/^[A-Z0-9]{5,10}$/, ' El SKU ha de tindre alfanumèrics en majúscules i números entre 5 i 10 ').required('Valor Requerit.'),
  image_url: yup.string().url('URL inválida'),
})

function Producte() {

  const [products, setProducts] = useState([])
  const [showModal, setShowModal] = useState(false)
  const [tipoModal, setTipoModal] = useState('Crear');

  useEffect(() => {
    const fetchData = async () => {
      const data = await getData(url, 'Product');
      setProducts(data);
    };
    fetchData();
  }, []);


  const eliminarProducte = (id) => {
    if (window.confirm('Estàs segur que vols eliminar aquest producte?')) {
      deleteData(url, 'Product', id);
      const newproducts = products.filter(product => product.id !== id);
      setProducts(newproducts);
    }
  };


  const modificarProducte = (valors) => {
    setTipoModal("Modificar")
  }

  const canviEstatModal = () => {
    setShowModal(!showModal)
  }

  return (
    <>
      {/** Llistat Productes */}
      <div>
        <h2>Llistat Productes</h2>
        <Button variant="success" onClick={() => { canviEstatModal(); setTipoModal("Crear") }}>Alta Producte</Button>
        <table className='table'>
          <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Descripcio</th>
            <th>Volumen</th>
            <th>Pes</th>
            <th>Control</th>
            <th>SKU</th>
            <th>Eliminar</th>
          </tr>
          {products.map((valors) => (
            <tr key={valors.id}>
              <td>{valors.id}</td>
              <td>{valors.name}</td>
              <td>{valors.description}</td>
              <td>{valors.volumen}</td>
              <td>{valors.weight}</td>
              <td>{valors.lotorserial}</td>
              <td>{valors.sku}</td>
              <td><Button variant='warning' onClick={() => { modificarProducte(valors.id); canviEstatModal() }}>Modificar</Button></td>
              <td><Button className='btn btn-primary' onClick={() => eliminarProducte(valors.id)}>Eliminar</Button></td>
            </tr>
          ))}

        </table>
      </div>

      <Modal show={showModal} >
        <Modal.Header closeButton onHide={canviEstatModal}>
          <Modal.Title>Alta de Productes</Modal.Title>
        </Modal.Header>

        <Modal.Body>

          <Formik
            key={tipoModal}
            initialValues={{
              name: '',
              description: '',
              volumen: 0,
              weight: 0,
              lotorserial: 'Non',
              sku: '',
              image_url: '',
            }}
            validationSchema={ProducteSchema}
            onSubmit={async values => {
              console.log(values);
              const newProduct = await postData(url, 'Product', values);
              setProducts([...products, newProduct]);
              canviEstatModal();
            }}
          >
            {({
              values,
              errors,
              touched,

            }) => (
              <Form>

                {/* NOM PRODUCTE */}
                <div>
                  <label htmlFor='name'>Nom del producte</label>
                  <Field
                    type="text"
                    name="name"
                    placeholder="Nom del producte"
                    autoComplete="off"
                    value={values.name}
                  />
                  {errors.name && touched.name ? <div>{errors.name}</div> : null}
                </div>

                {/* DESCRIPCIO PRODUCTE */}
                <div>
                  <label htmlFor='description'>Descripcio del producte</label>
                  <Field
                    as="textarea"
                    type="text"
                    name="description"
                    placeholder="Descripció del producte"
                    autoComplete="off"
                    value={values.description}
                  />
                  {errors.description && touched.description ? <div>{errors.description}</div> : null}
                </div>

                {/* VOLUMEN PRODUCTE */}
                <div>
                  <label htmlFor='volumen'>Volumen del producte</label>
                  <Fieldf
                    type="number"
                    name="volumen"
                    step="0.01"
                    placeholder="Volumen del producte"
                    autoComplete="off"
                    value={values.volumen}
                  />
                  {errors.volumen && touched.volumen ? <div>{errors.volumen}</div> : null}
                </div>

                {/* PES PRODUCTE */}
                <div>
                  <label htmlFor='weight'>Pes del producte</label>
                  <Field
                    type="number"
                    name="weight"
                    step="1"
                    placeholder="Pes del producte"
                    autoComplete="off"
                    value={values.weight}
                  />
                  {errors.weight && touched.weight ? <div>{errors.weight}</div> : null}
                </div>

                {/* LOTORSERIAL PRODUCTE */}
                <div>
                  <label htmlFor='lotorserial'>Control lot o serie</label>
                  <Field
                    as="select"
                    name="lotorserial"
                  >
                    <option value="Non">
                      No
                    </option>
                    <option value="Lot">
                      Lot
                    </option>
                    <option value="Serial">
                      Serial
                    </option>

                  </Field>
                  {errors.lotorserial && touched.lotorserial ? <div>{errors.lotorserial}</div> : null}
                </div>

                {/* SKU PRODUCTE */}
                <div>
                  <label htmlFor='sku'>SKU del producte</label>
                  <Field
                    type="text"
                    name="sku"
                    placeholder="SKU del producte"
                    autoComplete="off"
                    value={values.sku}
                  />
                  {errors.sku && touched.sku ? <div>{errors.sku}</div> : null}
                </div>

                {/* IMATGE PRODUCTE */}
                <div>
                  <label htmlFor='image_url'>URL imatge del producte</label>
                  <Field
                    type="text"
                    name="image_url"
                    placeholder="URL de la imatge del producte"
                    autoComplete="off"
                    value={values.image_url}
                  />
                  {errors.image_url && touched.image_url ? <div>{errors.image_url}</div> : null}
                </div>

                <div>
                  <Button onClick={() => canviEstatModal()} variant="secondary">Close</Button>

                  <Button variant={tipoModal === "Crear" ? "success" : "warning"} type='submit'>{tipoModal}</Button>
                </div>
              </Form>
            )}
          </Formik>

        </Modal.Body>
      </Modal>
    </>
  )
}

export default Producte