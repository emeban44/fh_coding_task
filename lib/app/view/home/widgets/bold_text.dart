import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  const BoldText(this.text, {Key? key}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 5),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
