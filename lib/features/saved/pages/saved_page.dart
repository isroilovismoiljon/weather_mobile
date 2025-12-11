import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/add_new_button.dart';
import '../widgets/location_card.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  final List<Map<String, dynamic>> savedLocations = const [
    {
      'city': 'Paris',
      'weather': 'Clear',
      'humidity': '56%',
      'wind': '4.63 km/h',
      'temp': '24',
      'condition': 'sunny',
    },
    {
      'city': 'London',
      'weather': 'Clouds',
      'humidity': '65%',
      'wind': '4.12 km/h',
      'temp': '16',
      'condition': 'clouds',
    },
    {
      'city': 'New York',
      'weather': 'Thunderstorm',
      'humidity': '34%',
      'wind': '9.26 km/h',
      'temp': '25',
      'condition': 'thunderstorm',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF45276D),
              Color(0xFF1E0E38),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(right: 24.w, left: 24.w, top: 40.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Saved Locations',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(Icons.search, color: Colors.white, size: 28.r),
                  ],
                ),
                SizedBox(height: 30.h),
                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemCount: savedLocations.length,
                    separatorBuilder: (context, index) => SizedBox(height: 20.h),
                    itemBuilder: (context, index) {
                      final data = savedLocations[index];
                      return LocationCard(
                        city: data['city'] as String,
                        weather: data['weather'] as String,
                        humidity: data['humidity'] as String,
                        wind: data['wind'] as String,
                        temperature: data['temp'] as String,
                        condition: data['condition'] as String,
                      );
                    },
                  ),
                ),

                SizedBox(height: 20.h),

                Center(child: AddNewButton()),

                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
