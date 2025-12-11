import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'forecast_icon.dart';

class WeatherForecastTable extends StatelessWidget {
  const WeatherForecastTable({super.key});
  final List<Map<String, dynamic>> forecastData = const [
    {'day': 'Wed 16', 'temp': '22°', 'wind': '1-5 km/h', 'condition': 'cloudy'},
    {'day': 'Thu 17', 'temp': '25°', 'wind': '1-5 km/h', 'condition': 'sunny'},
    {'day': 'Fri 18', 'temp': '23°', 'wind': '5-10 km/h', 'condition': 'sunny'},
    {'day': 'Sat 19', 'temp': '25°', 'wind': '1-5 km/h', 'condition': 'cloudy'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: forecastData.map((data) => ForecastItem(
          day: data['day'] as String,
          temp: data['temp'] as String,
          wind: data['wind'] as String,
          condition: data['condition'] as String,
        )).toList(),
      ),
    );
  }
}