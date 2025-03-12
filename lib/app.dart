
import 'package:flutter/material.dart';
import 'package:hotel_booking/components/ui/screens/homescreen.dart';
import 'package:hotel_booking/components/ui/screens/onboardingScreen.dart';
import 'package:hotel_booking/components/ui/utility/app_theme_data.dart';

class HotelBoking extends StatelessWidget {
  const HotelBoking({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.lightTheme,
      home:  OnboardingScreen()
    );
  }
}