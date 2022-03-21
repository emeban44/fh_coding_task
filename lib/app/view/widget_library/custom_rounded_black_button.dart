import 'package:flutter/material.dart';

class CustomRoundedBlackButton extends StatelessWidget {
  const CustomRoundedBlackButton({
    required this.childWidget,
    Key? key,
  }) : super(key: key);

  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          //padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {},
        child: childWidget,
      ),
    );
  }
}
