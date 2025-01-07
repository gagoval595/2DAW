import { Route, Routes } from 'react-router-dom'
import Producte from './Producte'

function App() {
  return (
    <>
    <Routes>
      <Route path="/Producte" element={<Producte/>}></Route>
      <Route path="/" element={<Error404/>}></Route>
      <Route path="/404" element={<Error404/>}></Route>

      </Routes>
    </>
  )
}

function Error404(){
  return(
<div>
    <h1>Error 404</h1>
  </div>
  )
}


export default App
