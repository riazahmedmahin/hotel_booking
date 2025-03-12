
import 'package:flutter/material.dart';
import 'package:hotel_booking/components/ui/screens/homescreen.dart';
import 'package:hotel_booking/components/ui/utility/app_theme_data.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeData.lightTheme,
      home:  HomeScreen()
    );
  }
}