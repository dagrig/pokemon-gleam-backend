# Pokémon Backend in Gleam

A simple backend for managing Pokémon using the [Gleam](https://gleam.run) programming language. This project demonstrates basic CRUD operations with a minimal setup, suitable for learning and experimentation.

## Project Structure

- **`gleam.toml`**: Project configuration file.
- **`src/main.gleam`**: Main entry point of the application, setting up HTTP routes.
- **`src/pokemon.gleam`**: Logic for managing Pokémon, including listing, adding, and retrieving Pokémon details.

## Requirements

- [Gleam](https://gleam.run/getting-started/)

## Setup

1. **Clone the repository:**
   ```sh
   git clone https://github.com/your-username/pokemon-backend-gleam.git
   cd pokemon-backend-gleam
   ```

2. **Install Gleam:**
   Follow the instructions from the [Gleam website](https://gleam.run/getting-started/).

3. **Build the project:**
   ```sh
   gleam build
   ```

4. **Run the server:**
   ```sh
   gleam run
   ```

## Usage

### List Pokémon

Send a GET request to `/pokemons` to list all available Pokémon.

```sh
curl http://localhost:4000/pokemons
```

### Add a Pokémon

Send a POST request to `/pokemon` with a JSON body to add a new Pokémon.

```sh
curl -X POST http://localhost:4000/pokemon -d '{"name": "Bulbasaur", "type_": "Grass/Poison"}' -H "Content-Type: application/json"
```

### Get Pokémon Details

Send a GET request to `/pokemon/{id}` to retrieve details of a specific Pokémon by its ID.

```sh
curl http://localhost:4000/pokemon/1
```

## Contributing

Feel free to submit pull requests, report issues, or suggest features!

## License

This project is licensed under the MIT License.
```

Replace `your-username` in the clone URL with your actual GitHub username. This `README.md` provides a clear overview of the project, how to set it up, and how to use it.