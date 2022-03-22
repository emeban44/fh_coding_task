import 'package:fh_home_coding_task/app/theme/theme_data.dart';
import 'package:fh_home_coding_task/app/view/widget_library/custom_icon_text_row.dart';
import 'package:fh_home_coding_task/app/view/widget_library/custom_rounded_black_button.dart';
import 'package:flutter/material.dart';

class WaterDetectorButtonRow extends StatelessWidget {
  const WaterDetectorButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLeftButtonRow(context),
          _buildRightButtonRow(context),
        ],
      ),
    );
  }

  Widget _buildLeftButtonRow(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.35,
      child: Row(
        children: [
          CustomRoundedBlackButton(
            childWidget: Text(
              'EDIT',
              style: getBodyTextStyle(context),
            ),
          ),
          const SizedBox(width: 5),
          CustomRoundedBlackButton(
            childWidget: Text(
              'UNPAIR',
              style: getBodyTextStyle(context),
            ),
          ),
          const SizedBox(width: 5),
          CustomRoundedBlackButton(
            childWidget: Text(
              'IDENTIFY',
              style: getBodyTextStyle(context),
            ),
          ),
          const SizedBox(width: 5),
          CustomRoundedBlackButton(
            childWidget: Text(
              'PING',
              style: getBodyTextStyle(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRightButtonRow(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Row(
        children: const [
          CustomRoundedBlackButton(
            childWidget: CustomIconTextRow(
              iconData: Icons.arrow_forward_ios,
              iconSize: 15,
              isIconLast: true,
              text: 'TIMELINE',
            ),
          ),
          SizedBox(width: 5),
          CustomRoundedBlackButton(
            childWidget: CustomIconTextRow(
              iconData: Icons.arrow_forward_ios,
              iconSize: 15,
              isIconLast: true,
              text: '8 NOTES',
            ),
          ),
        ],
      ),
    );
  }
}
