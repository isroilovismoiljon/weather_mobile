import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/routing/routes.dart';

import '../../../core/utils/icons.dart';

class LocationCard extends StatelessWidget {
  final String city;
  final String weather;
  final String humidity;
  final String wind;
  final String temperature;
  final String condition; // 'sunny', 'clouds', 'thunderstorm'

  const LocationCard({
    super.key,
    required this.city,
    required this.weather,
    required this.humidity,
    required this.wind,
    required this.temperature,
    required this.condition,
  });

  // Ob-havo ikonkasi
  Widget _getWeatherIcon() {
    SvgPicture icon;

    if (condition == 'sunny') {
      icon = SvgPicture.asset(AppIcons.sunnyWeather, width: 35.w, height: 35.h,);
    } else if (condition == 'cloudy') {
      icon = SvgPicture.asset(AppIcons.cloudWeather, width: 35.w, height: 35.h,);
    } else {
      icon = SvgPicture.asset(AppIcons.snowingWeather, width: 35.w, height: 35.h,);
    }

    return icon;
  }

  // Ikonka rangi
  Color _getIconColor() {
    switch (condition) {
      case 'sunny':
        return Colors.yellow;
      case 'clouds':
        return Colors.blueGrey.shade200;
      case 'thunderstorm':
        return Colors.grey.shade400;
      default:
        return Colors.yellow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){context.go(Routes.home);},
      child: Container(
        height: 160.h,
        padding: EdgeInsets.all(20.r),
        decoration: BoxDecoration(
          color: Color(0xFFAAA5A5).withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Column(
              mainAxisAlignment: .spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      city,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      weather,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      'Humidity $humidity',
                      style: TextStyle(color: Colors.white54, fontSize: 13.sp),
                    ),
                    SizedBox(width: 15.w),
                    Text(
                      'Wind $wind',
                      style: TextStyle(color: Colors.white54, fontSize: 13.sp),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _getWeatherIcon(),
                SizedBox(width: 5.w),
                Row(
                  children: [
                    Text(
                      temperature,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      '°C',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}