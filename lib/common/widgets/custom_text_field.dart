import 'package:flutter/material.dart';
import 'package:todo_with_riverpod/common/utils/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.kbInputType,
      required this.hintText,
      this.suffixIcon,
      this.prefixIcon,
      this.hintStyle, required this.controller});

  final TextInputType? kbInputType;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextStyle? hintStyle;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Constants.kWidth * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(Constants.kRadius),
        ),
      ),
      child: TextFormField(
        keyboardType: kbInputType,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          suffixIconColor: Constants.kbkDark,
          hintStyle: hintStyle,
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: Constants.kRed,
              width: 0.5,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 0.5,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: Constants.kRed,
              width: 0.5,
            ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: Constants.kGrayDark,
              width: 0.5,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: Constants.kbkDark,
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
