import 'package:fh_home_coding_task/app/helpers/edge_insets_helper.dart';
import 'package:fh_home_coding_task/app/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetectorStatusRow extends StatelessWidget {
  const DetectorStatusRow({Key? key, required this.status}) : super(key: key);
  final String status;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHomeColumnWidth(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (status == 'Offline' || status == 'Tampered')
            SvgPicture.asset('assets/exclamation.svg')
          else
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: SvgPicture.asset('assets/check.svg'),
            ),
          Text(
            status,
            style: getBodyTextStyle(context),
          ),
        ],
      ),
    );
  }
}
