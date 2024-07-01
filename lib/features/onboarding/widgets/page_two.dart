import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_with_riverpod/common/utils/constants.dart';
import 'package:todo_with_riverpod/common/widgets/appstyle.dart';
import 'package:todo_with_riverpod/common/widgets/custom_outlined_button.dart';
import 'package:todo_with_riverpod/common/widgets/height_spacer.dart';
import 'package:todo_with_riverpod/common/widgets/reusable_text.dart';
import 'package:todo_with_riverpod/features/auth/pages/login_page.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.kHeight,
      width: Constants.kWidth,
      color: Constants.kbkDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/onboarding_two.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ReusableText(
                  text: "Let's get started",
                  style: appStyle(25, Constants.kLight, FontWeight.bold),
                ),
                Text(
                  "Press 'Login' button to get registered with phone number",
                  textAlign: TextAlign.center,
                  style:
                      appStyle(14, Constants.kGrayLight, FontWeight.w600),
                ),
              ],
            ),
          ),
          HeightSpacer(spacerHeight: 50.h),
          CustomOutlinedButton(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              width: Constants.kWidth * 0.9,
              height: Constants.kHeight * 0.06,
              accentColor: Constants.kBlueLight,
              backgroundColor: Constants.kGrayBk,
              text: "Login"),
        ],
      ),
    );
  }
}
