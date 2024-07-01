import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_with_riverpod/common/utils/constants.dart';
import 'package:todo_with_riverpod/common/widgets/appstyle.dart';
import 'package:todo_with_riverpod/common/widgets/custom_outlined_button.dart';
import 'package:todo_with_riverpod/common/widgets/custom_text_field.dart';
import 'package:todo_with_riverpod/common/widgets/height_spacer.dart';
import 'package:todo_with_riverpod/common/widgets/reusable_text.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Image.asset("assets/images/login_page_image.png"),
              ),
              const HeightSpacer(spacerHeight: 20),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 16.w),
                child: ReusableText(
                  text: "Please add your phone number",
                  style: appStyle(17, Constants.kLight, FontWeight.w500),
                ),
              ),
              const HeightSpacer(spacerHeight: 20),
              // Center(
              //   child: CustomTextField(hintText: "", ),
              // ),
              const HeightSpacer(spacerHeight: 20),
              CustomOutlinedButton(
                width: Constants.kWidth * 0.9,
                height: Constants.kHeight * 0.07,
                accentColor: Constants.kGreen,
                backgroundColor: Constants.kLight,
                text: "Send Code",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
