import 'package:weather_app/core/utils/result.dart';

import '../../core/client.dart';
import '../models/weather_response_model.dart';

class WeatherRepository {
  final ApiClient _client;
  static String apiKey = "26cea09c84a85aa6d2247c64a56016bc";

  WeatherRepository({required ApiClient client}) : _client = client;

  Future<Result<WeatherResponse>> getWeather({
    required double lat,
    required double lon,
  }) async {
    final result = await _client.get<Map<String, dynamic>>(
      "",
      queryParams: {
        "lat": lat,
        "lon": lon,
        "appid": apiKey,
        "units": "metric",
        "exclude": "minutely,hourly,alerts"
      },
    );

    return result.fold(
          (error) => Result.error(error),
          (data) => Result.ok(WeatherResponse.fromJson(data)),
    );
  }
}
