import { Formik, Form, Field } from 'formik'
import * as yup from 'yup'
import { url, postData, getData, deleteData, updateId } from './crud'
import { useState, useEffect } from 'react'

const ProducteSchema = yup.object().shape({
  name: yup
    .string()
    .min(4, 'Valor mínim de 4 caràcters')
    .max(50, 'Valor màxim de 50 caràcters')
    .required('Valor requerit.'),
  description: yup
    .string()
    .min(4, 'Valor mínim de 4 caràcters')
    .max(60, 'Valor màxim de 60 caràcters'),
  volume: yup
    .number()
    .positive('El valor ha de ser positiu')
    .required('Valor requerit.'),
  weight: yup
    .number()
    .positive('El valor ha de ser positiu')
    .required('Valor requerit.'),
  lotorserial: yup.string().matches(/(Lot|Serial|Non)/),
  sku: yup
    .string()
    .matches(/^[A-Z0-9]{5,10}$/, 'El SKU ha de tindre alfanumèrics en majúscules i entre 5 i 10')
    .required('Valor requerit.'),
  image_url: yup.string().url('URL invàlida'),
})

function Producte() {
  const [products, setProducts] = useState([])
  useEffect(() => {
    const fetchData = async () => {
      try {
        const data = await getData(url, "Product")
        setProducts(data)
      } catch (error) {
        console.error("Error al carregar les dades:", error)
      }
    }
    fetchData()
  }, [])

  const eliminarProducte = (id) =>{
    deleteData(url, "Product", id)
    const newProducts = products.filter(item => item.id != id)
    setProducts(newProducts)
  }

  return (
    <>
      <h2>Alta de Producte</h2>
      <Formik
        initialValues={{
          name: '',
          description: '',
          volume: 0,
          weight: 0,
          lotorserial: 'Non',
          sku: '',
          image_url: '',
        }}
        validationSchema={ProducteSchema}
        onSubmit={(values) => {
          console.log(values)
          postData(url, "Product", values)
        }}
      >
        {({ errors, touched }) => (
          <Form>
            <div>
              <label htmlFor="name">Nom</label>
              <Field type="text" name="name" placeholder="Nom del producte" />
              {errors.name && touched.name ? <div>{errors.name}</div> : null}
            </div>

            <div>
              <label htmlFor="description">Descripció</label>
              <Field type="text" name="description" placeholder="Descripció" />
              {errors.description && touched.description ? (
                <div>{errors.description}</div>
              ) : null}
            </div>

            <div>
              <label htmlFor="volume">Volum</label>
              <Field type="number" name="volume" />
              {errors.volume && touched.volume ? <div>{errors.volume}</div> : null}
            </div>

            <div>
              <label htmlFor="weight">Pes</label>
              <Field type="number" name="weight" />
              {errors.weight && touched.weight ? <div>{errors.weight}</div> : null}
            </div>

            <div>
              <label htmlFor="lotorserial">Control lot o serie</label>
              <Field as="select" name="lotorserial">
                <option value="Selecciona una opció">Selecciona una opció</option>
                <option value="No">No</option>
                <option value="Lot">Lot</option>
                <option value="Serie">Serie</option>
              </Field>
            </div>

            <div>
              <label htmlFor="sku">SKU</label>
              <Field type="text" name="sku" placeholder="Exemple: ABC12345" />
              {errors.sku && touched.sku ? <div>{errors.sku}</div> : null}
            </div>

            <div>
              <label htmlFor="image_url">URL de la imatge</label>
              <Field type="text" name="image_url" placeholder="https://exemple.com/imatge.jpg" />
              {errors.image_url && touched.image_url ? <div>{errors.image_url}</div> : null}
            </div>

            <button type="submit">Enviar</button>
          </Form>
        )}
      </Formik>
      <div><h2>Llistat de productes</h2></div>
      <table>
        <tr>
          <th>ID</th>
          <th>Nom</th>
          <th>Descripció</th>
          <th>Volum</th>
          <th>Pes</th>
          <th>Control</th>
          <th>SKU</th>
          <th>Accions</th>
        </tr>
        <div>No hi han articles</div>
        {products.map((valors) => {
          return (<tr key={valors.id}>
            <td>{valors.id}</td>
            <td>{valors.name}</td>
            <td>{valors.description}</td>
            <td>{valors.volume}</td>
            <td>{valors.weight}</td>
            <td>{valors.lotorserial}</td>
            <td>{valors.sku}</td>
            <td><button onClick={()=> eliminarProducte(valors.id)}>Eliminar</button></td>
            </tr>)
        })}
      </table>
    </>
  )
}

export default Producte
