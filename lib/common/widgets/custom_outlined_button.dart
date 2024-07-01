import 'package:flutter/material.dart';
import 'package:todo_with_riverpod/common/widgets/appstyle.dart';
import 'package:todo_with_riverpod/common/widgets/reusable_text.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton(
      {super.key,
      this.onTap,
      required this.width,
      required this.height,
      this.backgroundColor,
      required this.accentColor,
      required this.text});

  final void Function()? onTap;
  final double width;
  final double height;
  final Color? backgroundColor;
  final Color accentColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          border: Border.all(width: 1, color: accentColor),
        ),
        child: Center(
          child: ReusableText(
            text: text,
            style: appStyle(18, accentColor, FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
