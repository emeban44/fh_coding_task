import 'package:fh_home_coding_task/app/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhoneIconRow extends StatelessWidget {
  const PhoneIconRow(this.phone, {Key? key}) : super(key: key);
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/phone.svg'),
        const SizedBox(width: 5),
        Text(
          phone,
          style: getBodyTextStyle(context),
        ),
        const SizedBox(width: 5),
        SvgPicture.asset('assets/copy.svg'),
      ],
    );
  }
}
