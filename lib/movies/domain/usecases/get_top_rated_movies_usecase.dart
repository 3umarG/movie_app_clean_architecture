import 'package:movie_app/movies/domain/entities/movie_entity.dart';
import 'package:movie_app/movies/domain/repository/base_movies_repository.dart';

class GetTopRatedMoviesUseCase {
  final BaseMoviesRepository _baseMoviesRepository;

  GetTopRatedMoviesUseCase(this._baseMoviesRepository);

  Future<List<Movie>> execute() async =>
      await _baseMoviesRepository.getTopRatedMovies();
}
