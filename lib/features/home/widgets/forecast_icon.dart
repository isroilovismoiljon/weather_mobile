import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/core/utils/icons.dart';

class ForecastItem extends StatelessWidget {
  final String day;
  final String temp;
  final String wind;
  final String condition;

  const ForecastItem({
    super.key,
    required this.day,
    required this.temp,
    required this.wind,
    required this.condition,
  });

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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        children: [
          Text(
            day,
            style: TextStyle(color: Colors.white, fontSize: 13.sp),
          ),
          SizedBox(height: 5.h),
          _getWeatherIcon(),
          SizedBox(height: 5.h),
          Text(
            temp,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            wind,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70, fontSize: 10.sp, height: 1.2.h),
          ),
        ],
      ),
    );
  }
}