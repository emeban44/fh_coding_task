import 'package:fh_home_coding_task/app/theme/theme_data.dart';
import 'package:fh_home_coding_task/app/view/widget_library/custom_rounded_black_button.dart';
import 'package:flutter/material.dart';

class BoardMemberButtonRow extends StatelessWidget {
  const BoardMemberButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.17,
      child: Row(
        children: [
          CustomRoundedBlackButton(
            childWidget: Text(
              'EDIT',
              style: getBodyTextStyle(context),
            ),
          ),
          const SizedBox(width: 10),
          CustomRoundedBlackButton(
            childWidget: Text(
              'DELETE',
              style: getBodyTextStyle(context),
            ),
          )
        ],
      ),
    );
  }
}
