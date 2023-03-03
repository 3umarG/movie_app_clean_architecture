import 'package:movie_app/movies/domain/entities/movie_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../core/failure/failure_model.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure , List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure , List<Movie>>> getPopularMovies();

  Future<Either<Failure , List<Movie>>> getTopRatedMovies();
}
