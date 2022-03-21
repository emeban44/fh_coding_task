import 'package:flutter/material.dart';

class CommonAreaText extends StatelessWidget {
  const CommonAreaText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Common area',
      style: TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.01,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
