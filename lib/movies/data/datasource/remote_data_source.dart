import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_app/core/exception/exceptions.dart';
import 'package:movie_app/core/network/error_message_model.dart';
import 'package:movie_app/core/utils/constants.dart';

import '../models/movie_model.dart';
import 'base_remote_data_source.dart';

class RemoteDataSource extends BaseRemoteDataSource {
  /// My Functions based on each Use Case ...
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final http.Response response = await http.get(
      Uri.parse(AppConstants.getNowPlayingPath),
    );

    // Json Response , it could be successful or Failure depends on the StatusCode
    Map<String, dynamic> jsonResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      // Return the Model
      // TODO : you can convert that by jsonDecode if there is an error
      List results = jsonResponse["results"];
      return results.map((e) => MovieModel.fromJson(e)).toList();
    } else {
      throw RemoteDataSourceException(
        errorMessageModel: ErrorMessageModel.fromJson(jsonResponse),
      );
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final http.Response response =
        await http.get(Uri.parse(AppConstants.getPopularPath));

    Map<String, dynamic> json = jsonDecode(response.body);

    if (response.statusCode == 200) {
      List result = json["results"];
      return result.map((e) => MovieModel.fromJson(e)).toList();
    } else {
      throw RemoteDataSourceException(
          errorMessageModel: ErrorMessageModel.fromJson(json));
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    final http.Response response =
        await http.get(Uri.parse(AppConstants.getTopRatedPath));

    Map<String, dynamic> json = jsonDecode(response.body);

    if (response.statusCode == 200) {
      List results = json["results"];
      return results.map((e) => MovieModel.fromJson(e)).toList();
    } else {
      throw RemoteDataSourceException(
          errorMessageModel: ErrorMessageModel.fromJson(json));
    }
  }
}
