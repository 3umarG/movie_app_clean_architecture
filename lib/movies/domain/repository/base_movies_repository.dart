import 'package:movie_app/movies/domain/entities/movie_entity.dart';

abstract class BaseMoviesRepository {
  Future<List<Movie>> getNowPlayingMovies();

  Future<List<Movie>> getPopularMovies();

  Future<List<Movie>> getTopRatedMovies();
}
