import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailIconRow extends StatelessWidget {
  const EmailIconRow(this.email, {Key? key}) : super(key: key);
  final String email;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(email),
        const SizedBox(width: 5),
        SvgPicture.asset('copy.svg'),
      ],
    );
  }
}
