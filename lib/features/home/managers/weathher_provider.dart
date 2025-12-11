import 'package:flutter/material.dart';
import 'package:weather_app/data/repositories/weather_repository.dart';

import '../../../data/models/weather_response_model.dart';

class WeatherProvider extends ChangeNotifier {
  final WeatherRepository _repository;

  WeatherProvider(this._repository);

  WeatherResponse? weather;
  bool isLoading = false;
  String? error;

  Future<void> loadWeather(double lat, double lon) async {
    isLoading = true;
    notifyListeners();

    final result = await _repository.getWeather(lat: lat, lon: lon);

    result.fold(
          (err) {
        error = err.toString();
      },
          (data) {
        weather = data;
      },
    );

    isLoading = false;
    notifyListeners();
  }
}
