import 'package:flutter/material.dart';

class CustomIconTextRow extends StatelessWidget {
  const CustomIconTextRow({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        icon,
        Text(text),
      ]),
    );
  }
}
