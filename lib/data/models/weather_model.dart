class WeatherModel {
  final String cityName;
  final double temperature;
  final String description;
  final double feelsLike;
  final int humidity;
  final double windSpeed;

  WeatherModel({
    required this.cityName,
    required this.temperature,
    required this.description,
    required this.feelsLike,
    required this.humidity,
    required this.windSpeed,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json["name"],
      temperature: json["main"]["temp"].toDouble(),
      description: json["weather"][0]["description"],
      feelsLike: json["main"]["feels_like"].toDouble(),
      humidity: json["main"]["humidity"],
      windSpeed: json["wind"]["speed"].toDouble(),
    );
  }
}
