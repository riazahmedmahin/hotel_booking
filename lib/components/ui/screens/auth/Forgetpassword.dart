import 'package:flutter/material.dart';

import '../../utility/app_color.dart';
import '../../widgets/custome_bottom.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text("Password recovery ", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
            Text("Enter your email address to recover your password"),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              decoration:  InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white12),
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  borderSide: BorderSide(
                    color: AppColors.primaryColor,
                  ), // Border when focused
                ),
                hintText: 'Email address',
                hintStyle: TextStyle(color: Colors.grey.shade600),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.grey.shade600,
                ),
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0 * 1.5, vertical: 14.0),
              ),
              keyboardType: TextInputType.name,
              onSaved: (phone) {
                // Save it
              },
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/OTP');
                },
                text: "Next",
                color: AppColors.primaryColor,
                txtcolor: Colors.white),
          ],
        ),
      ),
    );
  }
}