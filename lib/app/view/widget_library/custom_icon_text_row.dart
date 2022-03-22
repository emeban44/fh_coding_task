import 'package:fh_home_coding_task/app/theme/theme_data.dart';
import 'package:flutter/material.dart';

class CustomIconTextRow extends StatelessWidget {
  const CustomIconTextRow({
    required this.iconData,
    required this.text,
    this.isIconLast = false,
    this.iconSize = 20,
    Key? key,
  }) : super(key: key);

  final IconData iconData;
  final double iconSize;
  final String text;
  final bool isIconLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!isIconLast)
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: Icon(iconData, size: iconSize),
            ),
          Text(
            text,
          ),
          if (isIconLast)
            Container(
              margin: const EdgeInsets.only(left: 5),
              child: Icon(iconData, size: iconSize),
            ),
        ],
      ),
    );
  }
}
