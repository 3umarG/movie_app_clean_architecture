import 'package:movie_app/movies/domain/entities/movie_entity.dart';
import 'package:movie_app/movies/domain/repository/base_movies_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../core/exception/exceptions.dart';
import '../../../core/failure/failure_model.dart';
import '../datasource/base_remote_data_source.dart';

class MovieRepository extends BaseMoviesRepository {
  final BaseRemoteDataSource remoteDataSource;

  MovieRepository(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    /// This function may return The MovieModels Result or Exception.
    final result = await remoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on RemoteDataSourceException catch (exception) {
      return Left(ServerFailure(exception.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await remoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on RemoteDataSourceException catch (exception) {
      return Left(ServerFailure(exception.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async{
    final result = await remoteDataSource.getTopRatedMovies();
    try{
      return Right(result);
    }on RemoteDataSourceException catch(exception){
      return Left(ServerFailure(exception.errorMessageModel.statusMessage));
    }
  }
}
