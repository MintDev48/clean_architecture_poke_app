import 'package:clean_architecture_poke_app/core/error/failures.dart';
import 'package:clean_architecture_poke_app/features/pokemon/domain/entities/pokemon.dart';
import 'package:dartz/dartz.dart';

abstract class PokemonsRepsotitory {
  Future<Either<Failure, Pokemon>> getPokemon(int id);

  Future<Either<Failure, bool>> capturePokemon(Pokemon pokemon);

  Future<Either<Failure, List>> getCapturePokemons();
}
