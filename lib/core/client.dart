import 'package:dio/dio.dart';
import 'package:weather_app/core/utils/result.dart';

class ApiClient {
  ApiClient()
    : dio = Dio(
        BaseOptions(
          baseUrl: "https://api.openweathermap.org/data/3.0/onecall",
          // validateStatus: (value) => true,
        ),
      );

  late final Dio dio;

  Future<Result<T>> get<T>(String path, {Map<String, dynamic>? queryParams}) async {
    try {
      var response = await dio.get(path, queryParameters: queryParams);
      if (response.statusCode != 200) {
        return Result.error(Exception(response.data));
      }
      return Result.ok(response.data as T);
    } on Exception catch (exception) {
      return Result.error(exception);
    }
  }

  Future<Result<T>> post<T>(String path, {required data, Map<String, dynamic>? queryParams}) async {
    try {
      final response = await dio.post(path, data: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Result.ok(response.data);
      } else {
        return Result.error(Exception(response.data));
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}