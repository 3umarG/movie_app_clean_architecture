import 'package:movie_app/core/network/error_message_model.dart';

class RemoteDataSourceException implements Exception {
  final ErrorMessageModel errorMessageModel;

  const RemoteDataSourceException({required this.errorMessageModel});
}
