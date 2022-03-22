import 'package:fh_home_coding_task/app/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetectorDataRow extends StatelessWidget {
  const DetectorDataRow(this.data, {Key? key}) : super(key: key);
  final String data;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(data, style: getBodyTextStyle(context)),
        const SizedBox(width: 5),
        SvgPicture.asset(
          'assets/copy.svg',
          width: MediaQuery.of(context).size.width * 0.01,
        ),
      ],
    );
  }
}
