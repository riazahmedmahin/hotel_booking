
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking/components/ui/screens/Homescreen.dart';
import 'package:hotel_booking/components/ui/screens/onboardingScreen.dart';
import 'package:hotel_booking/components/ui/utility/app_theme_data.dart';
import 'package:hotel_booking/config/routes.dart';

class HotelBoking extends StatelessWidget {
  const HotelBoking({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.lightTheme,
      home:  OnboardingScreen(),
      routes: Approutes.routes,
    );
  }
}