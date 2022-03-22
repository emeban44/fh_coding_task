import 'package:flutter/material.dart';

class CustomDividerSpace extends StatelessWidget {
  const CustomDividerSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.05);
  }
}
