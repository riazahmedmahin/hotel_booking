import 'package:flutter/material.dart';
import 'package:hotel_booking/components/ui/screens/Forgetpassword.dart';
import 'package:hotel_booking/components/ui/screens/Homescreen.dart';
import 'package:hotel_booking/components/ui/screens/NewPassword.dart';
import 'package:hotel_booking/components/ui/screens/OTPScreen.dart';
import 'package:hotel_booking/components/ui/screens/SignInScreen.dart';
import 'package:hotel_booking/components/ui/screens/SignUpScreen.dart';
import 'package:hotel_booking/components/ui/screens/onboardingScreen.dart';
import 'package:hotel_booking/components/ui/widgets/NavBottom.dart';

class Approutes{
  static final Map<String,WidgetBuilder> routes = {
    '/BottomNav':(context)=>BottomNavScreen(),
    '/Signin':(context)=>SignInScreen(),
    '/Signup':(context)=>SignUpScreen(),
    '/Forgetpass':(context)=>ForgetPassword(),
    '/Onboarding':(context)=>OnboardingScreen(),
    '/OTP':(context)=>OtpScreen(),
    '/Newpass':(context)=>New_Password()
  };
}