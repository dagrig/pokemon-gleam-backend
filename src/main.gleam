import gleam/http
import gleam/http.{Request, Response}
import pokemon

pub fn main() {
  http.run(handle_request)
}

fn handle_request(request: Request) -> Response {
  case request.path {
    "/pokemons" -> pokemon.list_pokemons()
    "/pokemon" if request.method == "POST" -> pokemon.add_pokemon(request)
    path if path.starts_with("/pokemon/") -> {
      let id = path |> String.split("/") |> List.drop(1) |> List.head
      case id {
        Ok(id) -> pokemon.get_pokemon(id)
        Error(_) -> http.not_found()
      }
    }
    _ -> http.not_found()
  }
}