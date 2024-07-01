import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_with_riverpod/common/utils/constants.dart';
import 'package:todo_with_riverpod/common/widgets/appstyle.dart';
import 'package:todo_with_riverpod/common/widgets/height_spacer.dart';
import 'package:todo_with_riverpod/common/widgets/reusable_text.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

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
          Image.asset("assets/images/onboarding_one.png"),
          HeightSpacer(spacerHeight: 100.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ReusableText(
                  text: "Welcome to TWO DOO",
                  style: appStyle(25, Constants.kLight, FontWeight.bold),
                ),
                Text(
                  "This is not your typical todo app. Let's find out together how different this is...",
                  textAlign: TextAlign.center,
                  style:
                      appStyle(14, Constants.kGrayLight, FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
