import 'package:fh_home_coding_task/app/helpers/edge_insets_helper.dart';
import 'package:fh_home_coding_task/app/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class EmailIconRow extends StatelessWidget {
  const EmailIconRow(this.email, {Key? key}) : super(key: key);
  final String email;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: getHomeColumnWidth(context),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(email, style: getBodyTextStyle(context)),
            const SizedBox(width: 5),
            SvgPicture.asset('assets/copy.svg'),
          ],
        ),
      ),
    );
  }
}
