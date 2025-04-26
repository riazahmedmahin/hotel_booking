import 'package:flutter/material.dart';
import 'package:hotel_booking/components/ui/screens/auth/Forgetpassword.dart';
import 'package:hotel_booking/components/ui/screens/Homescreen.dart';
import 'package:hotel_booking/components/ui/screens/auth/NewPassword.dart';
import 'package:hotel_booking/components/ui/screens/auth/OTPScreen.dart';
import 'package:hotel_booking/components/ui/screens/auth/SignInScreen.dart';
import 'package:hotel_booking/components/ui/screens/auth/SignUpScreen.dart';
import 'package:hotel_booking/components/ui/screens/onboardingScreen.dart';
import 'package:hotel_booking/components/ui/screens/hotel/symmary.dart';
import 'package:hotel_booking/components/ui/widgets/NavBottom.dart';

class Approutes{
  static final Map<String,WidgetBuilder> routes = {
    '/BottomNav':(context)=>BottomNavScreen(),
    '/Signin':(context)=>SignInScreen(),
    '/Signup':(context)=>SignUpScreen(),
    '/Forgetpass':(context)=>ForgetPassword(),
    '/Onboarding':(context)=>OnboardingScreen(),
    '/OTP':(context)=>OtpScreen(),
    '/Newpass':(context)=>New_Password(),
    //'Bookingsummary':(context)=>BookingSummaryScreen()

  
  };
}