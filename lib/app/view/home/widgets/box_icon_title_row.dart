import 'package:fh_home_coding_task/app/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoxIconTitleRow extends StatelessWidget {
  const BoxIconTitleRow({
    required this.assetPath,
    required this.title,
    Key? key,
  }) : super(key: key);
  final String assetPath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(assetPath),
        const SizedBox(width: 5),
        Text(
          title,
          style: getBodyTextStyle(context),
        ),
      ],
    );
  }
}
