class AppConstants {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = "3189403c43a8d647355f0fcf96627ca1";

  static const String getNowPlayingEndPoint = "/movie/now_playing";
  static const String getNowPlayingPath =
      "$baseUrl$getNowPlayingEndPoint?api_key=${AppConstants.apiKey}";

  static const String getPopularEndPoint = "/movie/popular";
  static const String getPopularPath =
      "$baseUrl$getPopularEndPoint?api_key=${AppConstants.apiKey}";

  static const String getTopRatedEndPoint = "/movie/top_rated";
  static const String getTopRatedPath =
      "$baseUrl$getTopRatedEndPoint?api_key=${AppConstants.apiKey}";

}
