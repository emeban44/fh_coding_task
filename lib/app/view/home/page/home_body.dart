import 'dart:io';

import 'package:fh_home_coding_task/app/view/home/widgets/board_member_box/box_body.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/smoke_detector_box/box_body.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/water_detector_box/box_body.dart';
import 'package:fh_home_coding_task/app/view/widget_library/custom_icon_text_row.dart';
import 'package:fh_home_coding_task/app/view/widget_library/custom_rounded_black_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

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
          const SmokeDetectorBoxBody(),
          const WaterDetectorBoxBody(),
        ],
      ),
    );
  }

  Widget _buildCommonAreaRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildCommonAreaSvgImage(context),
        _buildCommonAreaText(context),
      ],
    );
  }

  Widget _buildCommonAreaSvgImage(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      child: SvgPicture.asset(
        'assets/common_area.svg',
        width: MediaQuery.of(context).size.width * 0.02,
      ),
    );
  }

  Widget _buildCommonAreaText(BuildContext context) {
    return Text(
      'Common area',
      style: TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.01,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildTopRightButtonRow(BuildContext context) {
    return SizedBox(
      width: kIsWeb
          ? MediaQuery.of(context).size.width * 0.35
          : MediaQuery.of(context).size.width * 0.45,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Expanded(
            child: CustomRoundedBlackButton(
              horizontalMargin: 5,
              childWidget: CustomIconTextRow(
                iconData: Icons.add,
                text: 'CONTACT',
              ),
            ),
          ),
          Expanded(
            child: CustomRoundedBlackButton(
              horizontalMargin: 5,
              childWidget: CustomIconTextRow(
                iconData: Icons.add,
                text: 'ROOM',
              ),
            ),
          ),
          Expanded(
            child: CustomRoundedBlackButton(
              horizontalMargin: 5,
              childWidget: CustomIconTextRow(
                iconData: Icons.add,
                text: 'DEVICE',
              ),
            ),
          ),
          Expanded(
            child: CustomRoundedBlackButton(
              horizontalMargin: 5,
              childWidget: CustomIconTextRow(
                iconData: Icons.arrow_forward_ios,
                iconSize: 15,
                isIconLast: true,
                text: '8 NOTES',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
