import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/core/utils/icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withValues(alpha: 0.5),
              BlendMode.darken,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(right: 24.w, left: 24.w, top: 78.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Row(
                    spacing: 4.w,
                    children: [
                      SvgPicture.asset(
                        AppIcons.location,
                        width: 31.w,
                        height: 31.h,
                        colorFilter: ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                      Text(
                        'Paris',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    AppIcons.menu,
                    width: 32.w,
                    height: 32.h,
                  ),
                ],
              ),
              SizedBox(height: 60.h),
              Text(
                "June 07",
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Updated as of ",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "6/7/2023 12:25 PM",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h,),
              Column(
                children: [
                  Image.asset('assets/images/sun.png', width: 95.w, height: 95.h,),

                  Text(
                    "6/7/2023 12:25 PM",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
