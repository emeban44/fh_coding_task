import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
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
        //width: MediaQuery.of(context).size.width * 0.125,
        //padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.symmetric(
          horizontal: horizontalMargin ?? 0,
          vertical: verticalMargin ?? 0,
        ),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            alignment: Alignment.center,
            elevation: 0,
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
            side: const BorderSide(color: Colors.black),
            primary: Colors.black,
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
