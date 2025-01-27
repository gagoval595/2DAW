import { useState } from 'react';
import './App.css';
import { Button } from 'react-bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';

function App() {
  const API = "https://pokeapi.co/api/v2/pokemon/";
  const [pokemonNumber, setPokemonNumber] = useState("");
  const [pokemonData, setPokemonData] = useState(null);

  const fetchPokemon = async () => {
    if (!pokemonNumber) return;
    try {
      const response = await fetch(`${API}${pokemonNumber}`);
      if (!response.ok) throw new Error("Pokémon no trobat!");
      const data = await response.json();
      setPokemonData({
        name: data.name,
        image: data.sprites.front_default,
      });
    } catch (error) {
      alert(error.message);
      setPokemonData(null);
    }
  };

  return (
    <>
      <div className="card border-black">
      <h1 className='text-center bg-danger text-white'>Pokémon</h1>
        <input
          type="number"
          placeholder="Número del Pokémon"
          value={pokemonNumber}
          onChange={(e) => setPokemonNumber(e.target.value)}
          className="input"
        />
        <button onClick={fetchPokemon} className="btn bg-dark text-white">
          Cercar Pokémon
        </button>
        {pokemonData && (
          <div className="pokemon-info">
            <h2>{pokemonData.name}</h2>
            <img src={pokemonData.image} alt={pokemonData.name} />
          </div>
        )}
      </div>
    </>
  );
}

export default App;
