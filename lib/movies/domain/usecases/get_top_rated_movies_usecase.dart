import 'package:movie_app/movies/domain/entities/movie_entity.dart';
import 'package:movie_app/movies/domain/repository/base_movies_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/failure/failure_model.dart';

class GetTopRatedMoviesUseCase {
  final BaseMoviesRepository _baseMoviesRepository;

  GetTopRatedMoviesUseCase(this._baseMoviesRepository);

  Future<Either<Failure, List<Movie>>> execute() async =>
      await _baseMoviesRepository.getTopRatedMovies();
}
