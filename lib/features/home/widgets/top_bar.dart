import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/routing/routes.dart';

class TopBar extends StatelessWidget {
  final String location;

  const TopBar({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.location_on_outlined, color: Colors.white, size: 24.r),
            SizedBox(width: 5.w),
            Text(
              location,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        IconButton(onPressed: (){context.go(Routes.saved);}, icon: Icon(Icons.menu, color: Colors.white, size: 24.r)),
      ],
    );
  }
}