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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
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
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Row(
              children: const [
                CustomRoundedBlackButton(
                  horizontalMargin: 5,
                  childWidget: CustomIconTextRow(
                    iconData: Icons.arrow_forward_ios,
                    iconSize: 15,
                    isIconLast: true,
                    text: 'TIMELINE',
                  ),
                ),
                CustomRoundedBlackButton(
                  horizontalMargin: 5,
                  childWidget: CustomIconTextRow(
                    iconData: Icons.arrow_forward_ios,
                    iconSize: 15,
                    isIconLast: true,
                    text: '8 NOTES',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
