import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidthSpacer extends StatelessWidget {
  const WidthSpacer({
    super.key, required this.spacerWidth,
  });

  final double spacerWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: spacerWidth.w,
    );
  }
}