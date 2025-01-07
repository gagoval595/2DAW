import React from 'react'
import { Formik, Form, Field } from 'formik'
import * as Yup from 'yup'

const ProducteSchema = Yup.object().shape({
  name: Yup.string().min(4, 'Valor mínim de 4 carácters.').max(50, 'El valor màxim és de 50 caracters.').required('Valor requerit'),
  description: Yup.text().min(4, 'Valor mínim de 4 carácters.').max(60, 'El valor màxim és de 60 caracters.'),
  volume: Yup.number().positive('El valor ha de ser positiu').required('Valor requerit'),
  weight: Yup.number().positive('El valor ha de ser positiu').required('Valor requerit'),
  lotorserial: Yup.string().matches(/(Lot[Serial|Non])/),
  sku: Yup.string().matches(/^[A-Z0-9] {5,10}$','El SKU Ha de tindre alfanumèrics entre 5 i 10$/),
  image_url: Yup.string(),
})

function Producte() {
  return (
    <>
      <div>Alta de Producte</div>
      <Formik
        initialValues={{ name: '', description: '', volume: '0', weight: '0', lotorserial: 'Non', sku: '', image_url: '' }}
        validationSchema={ProducteSchema}
        onSubmit={
          values => {
            console.log(values);
          }}
      >
        {({
          values,
          errors,
          touched,
        })} => {
          <form>
            <label htmlFor='name' Nom ></label>
            <field
              type='text'
              name='name'
              placeholder='Nom del producte'
              autoComplete='off'

              value={values.name}
            />
            {UNSAFE_ErrorResponseImpl.name && touched.name ? <div>errors.name</div> : null}
          </form>
    )}
    </Formik>
    </>

  )

}


export default Producte