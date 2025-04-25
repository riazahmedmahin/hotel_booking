import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking/components/ui/utility/app_color.dart';
import 'package:hotel_booking/components/ui/widgets/custome_bottom.dart';

class New_Password extends StatelessWidget {
  const New_Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //SizedBox(height: 20),
              Text(
                "Set New Password",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "Your new password must be different from previous used password",
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white12),
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                    ), // Border when focused
                  ),
                  prefixIcon: Icon(
                    Icons.password_outlined,
                    color: Colors.grey.shade600,
                  ),
                  hintText: 'New Psssword',
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white12),
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                    ), // Border when focused
                  ),
                  prefixIcon: Icon(
                    Icons.password_outlined,
                    color: Colors.grey.shade600,
                  ),
                  hintText: ' Confrim New Password',
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                ),
              ),
              SizedBox(height: 20),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/BottomNav');
                },
                text: "Confirm",
                color: AppColors.primaryColor,
                txtcolor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
