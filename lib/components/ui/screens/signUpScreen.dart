import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking/components/ui/screens/SignInScreen.dart';
import 'package:hotel_booking/components/ui/utility/app_color.dart';
import 'package:hotel_booking/components/ui/widgets/custome_bottom.dart';

class SignUpScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: constraints.maxHeight * 0.2),
                  Text(
                    "Create Account!",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "You have to see you again to your accout",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  SizedBox(height: constraints.maxHeight * 0.05),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white12),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(
                                color: AppColors.primaryColor,
                              ), // Border when focused
                            ),
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.grey.shade600),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.grey.shade600,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16.0 * 1.5,
                              vertical: 14.0,
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          onSaved: (phone) {
                            // Save it
                          },
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white12),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(
                                color: AppColors.primaryColor,
                              ), // Border when focused
                            ),
                            hintText: 'Phone',
                            hintStyle: TextStyle(color: Colors.grey.shade600),
                            prefixIcon: Icon(
                              Icons.call,
                              color: Colors.grey.shade600,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16.0 * 1.5,
                              vertical: 14.0,
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                          onSaved: (phone) {
                            // Save it
                          },
                        ),
                        SizedBox(height: 15),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white12),
                              borderRadius: BorderRadius.all(
                                Radius.circular(7),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(7),
                              ),
                              borderSide: BorderSide(
                                color: AppColors.primaryColor,
                              ), // Border when focused
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey.shade600),
                            prefixIcon: Icon(
                              Icons.password_rounded,
                              color: Colors.grey.shade600,
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye_sharp,
                              color: Colors.grey.shade600,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16.0 * 1.5,
                              vertical: 14.0,
                            ),
                          ),
                          onSaved: (passaword) {
                            // Save it
                          },
                        ),
                        SizedBox(height: 25),
                        CustomButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/BottomNav');
                          },
                          text: "Register",
                          color: AppColors.primaryColor,
                          txtcolor: Colors.white,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 16.0,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      thickness: 1,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Text(
                                      "Or Sign up with",
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      thickness: 1,
                                      color: Colors.grey.shade400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //socialwithSignIn(),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                      ],
                    ),
                  ),
                  socialwithSignIn(),
                  SizedBox(
                    height: constraints.maxHeight * 0.1,
                  ), // Add spacing at the bottom

                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Signin');
                    },
                    child: Text.rich(
                      const TextSpan(
                        text: "Have an account? ",
                        children: [
                          TextSpan(
                            text: "Sign In",
                            style: TextStyle(color: Colors.indigo),
                          ),
                        ],
                      ),
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(
                          context,
                        ).textTheme.bodyLarge!.color!.withOpacity(0.64),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class socialwithSignIn extends StatelessWidget {
  const socialwithSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/128/281/281764.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(width: 12),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/128/0/747.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(width: 12),
        // Container(
        //   height: 60,
        //   width: 60,
        //   decoration: BoxDecoration(
        //       color: Colors.grey.shade100,
        //       borderRadius: BorderRadius.circular(8)),
        //   child: ClipRRect(
        //       child: Padding(
        //     padding: const EdgeInsets.all(16.0),
        //     child: Image.network(
        //       "https://cdn-icons-png.flaticon.com/128/5968/5968764.png",
        //       fit: BoxFit.cover,
        //     ),
        //   )),
        // ),
      ],
    );
  }
}
