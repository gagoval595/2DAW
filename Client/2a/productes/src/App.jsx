import { Routes, Route } from 'react-router-dom'
import Producte from './Producte'

function App() {
  return (
    <Routes>
      <Route path="/producte" element={<Producte />} />
      <Route path="*" element={<Error404 />} />
    </Routes>
  )
}

function Error404() {
  return (
    <div>
      <h1>Error 404: Pàgina no trobada</h1>
    </div>
  )
}

export default App
