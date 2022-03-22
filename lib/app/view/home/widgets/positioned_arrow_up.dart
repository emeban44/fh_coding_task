import 'package:flutter/material.dart';

class ArrowUpPositioned extends StatelessWidget {
  const ArrowUpPositioned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 15,
      right: 5,
      child: Icon(
        Icons.keyboard_arrow_up_outlined,
        size: 25,
      ),
    );
  }
}
