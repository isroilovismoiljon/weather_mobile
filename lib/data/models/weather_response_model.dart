
class WeatherResponse {
  final CurrentWeather current;
  final List<DailyWeather> daily;
  final double lat;
  final double lon;
  final String timezone;

  WeatherResponse({
    required this.current,
    required this.daily,
    required this.lat,
    required this.lon,
    required this.timezone,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    return WeatherResponse(
      lat: json['lat'],
      lon: json['lon'],
      timezone: json['timezone'],
      current: CurrentWeather.fromJson(json['current']),
      daily: (json['daily'] as List)
          .map((e) => DailyWeather.fromJson(e))
          .toList(),
    );
  }
}

class CurrentWeather {
  final double temp;
  final double feelsLike;
  final int humidity;
  final double windSpeed;
  final String main;
  final String description;
  final String icon;

  CurrentWeather({
    required this.temp,
    required this.feelsLike,
    required this.humidity,
    required this.windSpeed,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      temp: json['temp']?.toDouble(),
      feelsLike: json['feels_like']?.toDouble(),
      humidity: json['humidity'],
      windSpeed: json['wind_speed']?.toDouble(),
      main: json['weather'][0]['main'],
      description: json['weather'][0]['description'],
      icon: json['weather'][0]['icon'],
    );
  }
}

class DailyWeather {
  final int dt;
  final double min;
  final double max;
  final String icon;

  DailyWeather({
    required this.dt,
    required this.min,
    required this.max,
    required this.icon,
  });

  factory DailyWeather.fromJson(Map<String, dynamic> json) {
    return DailyWeather(
      dt: json['dt'],
      min: json['temp']['min']?.toDouble(),
      max: json['temp']['max']?.toDouble(),
      icon: json['weather'][0]['icon'],
    );
  }
}
