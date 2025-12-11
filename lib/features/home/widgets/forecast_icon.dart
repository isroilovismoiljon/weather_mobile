import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/core/utils/icons.dart';

class ForecastItem extends StatelessWidget {
  final String day;
  final String temp;
  final String wind;
  final String condition; // 'sunny' yoki 'cloudy'

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
      icon = SvgPicture.asset(AppIcons.sunnyWeather, width: 43.w, height: 33.h,);
    } else if (condition == 'cloudy') {
      icon = SvgPicture.asset(AppIcons.location, width: 43.w, height: 33.h,);
    } else {
      icon = SvgPicture.asset(AppIcons.location, width: 43.w, height: 33.h,);
    }

    return icon;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
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
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              wind,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70, fontSize: 9.sp),
            ),
          ],
        ),
      ),
    );
  }
}