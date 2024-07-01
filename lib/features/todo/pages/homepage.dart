import 'package:flutter/material.dart';
import 'package:todo_with_riverpod/common/utils/constants.dart';
import 'package:todo_with_riverpod/common/widgets/appstyle.dart';
import 'package:todo_with_riverpod/common/widgets/reusable_text.dart';
import 'package:todo_with_riverpod/common/widgets/width_spacer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ReusableText(
              text: "Two",
              style: appStyle(26, Constants.kBlueLight, FontWeight.bold),
            ),
            const WidthSpacer(spacerWidth: 20),
            ReusableText(
              text: "Two",
              style: appStyle(26, Constants.kBlueLight, FontWeight.bold),
            ),
            const WidthSpacer(spacerWidth: 20),
            ReusableText(
              text: "Two",
              style: appStyle(26, Constants.kBlueLight, FontWeight.bold),
            ),
        ]),
      ),
    );
  }
}
