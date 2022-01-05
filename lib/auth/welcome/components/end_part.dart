// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/auth/welcome/appColors/app_colors.dart';
import 'package:e_commerce_app/auth/welcome/login/login_page.dart';
import 'package:e_commerce_app/auth/welcome/route/routing_page.dart';
import 'package:e_commerce_app/auth/welcome/signup/signup_page.dart';
import 'package:e_commerce_app/widget/my_button.dart';
import 'package:flutter/material.dart';

class EndPart extends StatelessWidget {
  const EndPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyButton(
          onPressed: () {
            RoutingPage.goTonext(
              context: context,
              navigateTo: LoginPage(),
            );
          },
          text: "LOG IN",
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            RoutingPage.goTonext(
              context: context,
              navigateTo: SignupPage(),
            );
          },
          child: Text(
            "SIGNUP",
            style: TextStyle(
              color: AppColors.KgreyColor,
            ),
          ),
        )
      ],
    );
  }
}
