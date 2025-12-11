import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewButton extends StatelessWidget {
  const AddNewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w, // Kenglikni boshqarish
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1), // Engil shaffof oq fon
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(color: Colors.white38, width: 1.r),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, color: Colors.white, size: 24.r),
            SizedBox(width: 5.w),
            Text(
              'Add new',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}