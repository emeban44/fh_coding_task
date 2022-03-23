import 'package:fh_home_coding_task/app/helpers/color_helper.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  final themeData = ThemeData(
    primarySwatch: primaryBlack,
  );

  static final blueRoundedBorderDecoration = BoxDecoration(
    border: Border.all(color: Colors.blue),
    borderRadius: BorderRadius.circular(15),
  );
}

TextStyle getBodyTextStyle(BuildContext context) {
  return TextStyle(fontSize: MediaQuery.of(context).size.width * 0.01);
}
