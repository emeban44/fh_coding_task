import 'package:fh_home_coding_task/app/helpers/edge_insets_helper.dart';
import 'package:fh_home_coding_task/app/theme/theme_data.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/board_member_box/phone_icon_row.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/bold_text.dart';
import 'package:fh_home_coding_task/app/view/widget_library/custom_divider_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'board_member_button_row.dart';
import 'board_member_row.dart';
import 'email_icon_row.dart';

class BoardMemberBoxBody extends StatelessWidget {
  const BoardMemberBoxBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          margin: blueBorderedBoxMargin,
          padding: blueBorderedBoxPadding,
          decoration: CustomTheme.blueRoundedBorderDecoration,
          child: _buildBody(context),
        ),
        _buildPositionedUpArrow(context),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          //width: MediaQuery.of(context).size.width * 0.70,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoardMemberColumn(context),
              const CustomDividerSpace(),
              _buildPhoneAndDateColumn(
                context,
                phone: '+47 444 44 444',
                date: '01.01.1970.',
              ),
              const CustomDividerSpace(),
              _buildPriorityText(context, 'Priority 1'),
              const CustomDividerSpace(),
              const EmailIconRow('@ mario@castle.com'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPriorityText(BuildContext context, String priority) {
    return SizedBox(
      width: getHomeColumnWidth(context),
      child: Row(
        children: [
          Text(
            priority,
            style: getBodyTextStyle(context),
          ),
          SvgPicture.asset('assets/copy.svg', color: Colors.transparent)
        ],
      ),
    );
  }

  Widget _buildBoardMemberColumn(BuildContext context) {
    return SizedBox(
      width: getHomeColumnWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BoardMemberIconRow(),
          const SizedBox(height: 15),
          BoldText('UPDATED AT'),
          const SizedBox(height: 5),
          BoardMemberButtonRow(),
        ],
      ),
    );
  }

  Widget _buildPhoneAndDateColumn(BuildContext context,
      {required String phone, required String date}) {
    return SizedBox(
      width: getHomeColumnWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PhoneIconRow(phone),
          const SizedBox(height: 15),
          Text(
            date,
            style: getBodyTextStyle(context),
          ),
        ],
      ),
    );
  }

  Widget _buildPositionedUpArrow(BuildContext context) {
    return const Positioned(
      top: 15,
      right: 5,
      child: Icon(
        Icons.keyboard_arrow_up_outlined,
        size: 25,
      ),
    );
  }
}
