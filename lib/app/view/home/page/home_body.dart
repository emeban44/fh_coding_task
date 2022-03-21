import 'package:fh_home_coding_task/app/view/home/widgets/board_member_box/board_member_button_row.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/board_member_box/board_member_row.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/board_member_box/box_body.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/common_area_svg_image.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/common_area_text.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/board_member_box/email_icon_row.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/board_member_box/phone_icon_row.dart';
import 'package:fh_home_coding_task/app/view/widget_library/custom_icon_text_row.dart';
import 'package:fh_home_coding_task/app/view/widget_library/custom_rounded_black_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCommonAreaRow(context),
              _buildTopRightButtonRow(context),
            ],
          ),
          const BoardMemberBoxBody(),
        ],
      ),
    );
  }

  Widget _buildCommonAreaRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [CommonAreaSvgImage(), CommonAreaText()],
    );
  }

  Widget _buildTopRightButtonRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        CustomRoundedBlackButton(
          horizontalMargin: 5,
          childWidget: CustomIconTextRow(
            iconData: Icons.add,
            text: 'CONTACT',
          ),
        ),
        CustomRoundedBlackButton(
          horizontalMargin: 5,
          childWidget: CustomIconTextRow(
            iconData: Icons.add,
            text: 'ROOM',
          ),
        ),
        CustomRoundedBlackButton(
          horizontalMargin: 5,
          childWidget: CustomIconTextRow(
            iconData: Icons.add,
            text: 'DEVICE',
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
    );
  }
}
