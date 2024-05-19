import gleam/http.{Request, Response}
import gleam/json

pub type Pokemon {
  Pokemon(name: String, type_: String)
}

pub fn list_pokemons() -> Response {
  let pokemons = [
    Pokemon("Pikachu", "Electric"),
    Pokemon("Charmander", "Fire"),
    Pokemon("Squirtle", "Water"),
  ]
  http.json_response(200, json.encode(pokemons))
}

pub fn add_pokemon(request: Request) -> Response {
  case json.decode(request.body, Pokemon.decoder()) {
    Ok(pokemon) -> {
      // Here you would normally save the pokemon to a database
      http.json_response(201, json.encode(pokemon))
    }
    Error(_) -> http.json_response(400, json.string("Invalid JSON"))
  }
}

pub fn get_pokemon(id: String) -> Response {
  let pokemons = [
    Pokemon("1", "Pikachu", "Electric"),
    Pokemon("2", "Charmander", "Fire"),
    Pokemon("3", "Squirtle", "Water"),
  ]
  case List.find(pokemons, fn(pokemon) { pokemon.id == id }) {
    Some(pokemon) -> http.json_response(200, json.encode(pokemon))
    None -> http.not_found()
  }
}