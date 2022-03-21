import 'package:fh_home_coding_task/app/helpers/edge_insets_helper.dart';
import 'package:fh_home_coding_task/app/theme/theme_data.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/board_member_box/phone_icon_row.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/bold_text.dart';
import 'package:flutter/material.dart';

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
          width: MediaQuery.of(context).size.width * 0.70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBoardMemberColumn(context),
              _buildPhoneAndDateColumn(
                context,
                phone: '+47 444 44 444',
                date: '01.01.1970.',
              ),
              _buildPriorityText(context, 'Priority 1'),
              const EmailIconRow('@ mario@castle.com'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPriorityText(BuildContext context, String priority) {
    return Text(priority);
  }

  Widget _buildBoardMemberColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BoardMemberIconRow(),
        const SizedBox(height: 15),
        BoldText('UPDATED AT'),
        const SizedBox(height: 15),
        BoardMemberButtonRow(),
      ],
    );
  }

  Widget _buildPhoneAndDateColumn(BuildContext context,
      {required String phone, required String date}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PhoneIconRow(phone),
        const SizedBox(height: 15),
        Text(date),
      ],
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
