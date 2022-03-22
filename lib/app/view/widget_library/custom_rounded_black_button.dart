import 'package:flutter/material.dart';

class CustomRoundedBlackButton extends StatelessWidget {
  const CustomRoundedBlackButton({
    required this.childWidget,
    this.verticalMargin,
    this.horizontalMargin,
    Key? key,
  }) : super(key: key);

  final Widget childWidget;
  final double? verticalMargin;
  final double? horizontalMargin;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: horizontalMargin ?? 0,
          vertical: verticalMargin ?? 0,
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            alignment: Alignment.center,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () {},
          child: FittedBox(
            child: childWidget,
          ),
        ),
      ),
    );
  }
}
