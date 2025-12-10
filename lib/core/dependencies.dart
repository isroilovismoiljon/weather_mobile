import 'package:provider/provider.dart';
import '../data/repositories/weather_repository.dart';
import 'client.dart';

final dependencies = [
  Provider(
    create: (context) => ApiClient(),
  ),
  Provider(create: (context) => WeatherRepository(client: context.read())),
];
