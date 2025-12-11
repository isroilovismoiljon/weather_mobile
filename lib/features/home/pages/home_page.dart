import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/info_column.dart';
import '../widgets/top_bar.dart';
import '../widgets/weather_forecast_table.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> secondaryInfo = [
      {'icon': Icons.water_drop_outlined, 'label': 'HUMIDITY', 'value': '56%'},
      {'icon': Icons.air, 'label': 'WIND', 'value': '4.63 km/h'},
      {'icon': Icons.thermostat_outlined, 'label': 'FEELS LIKE', 'value': '22°'},
    ];

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/city-photo.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black12,
                    Colors.black26,
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10.h),
                  TopBar(location: 'Paris'),
                  SizedBox(height: 40.h),
                  Text(
                    'June 07',
                    style: TextStyle(color: Colors.white, fontSize: 40.sp, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Text(
                        'Updated as of ',
                        style: TextStyle(color: Colors.white70, fontSize: 16.sp),
                      ),
                      Text(
                        '6/7/2023 12:25 PM',
                        style: TextStyle(color: Colors.white70, fontSize: 16.sp),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Icon(Icons.wb_sunny, color: Colors.yellow, size: 50.r),
                  SizedBox(height: 10.h),
                  Text(
                    'Clear',
                    style: TextStyle(color: Colors.white, fontSize: 48.sp, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '24°C',
                    style: TextStyle(color: Colors.white, fontSize: 80.sp, fontWeight: FontWeight.w300),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: secondaryInfo
                          .map(
                            (info) => InfoColumn(
                              icon: info['icon'] as IconData,
                              label: info['label'] as String,
                              value: info['value'] as String,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  WeatherForecastTable(),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
