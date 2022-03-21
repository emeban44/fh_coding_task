import 'package:fh_home_coding_task/app/view/widget_library/custom_rounded_black_button.dart';
import 'package:flutter/material.dart';

class BoardMemberButtonRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomRoundedBlackButton(
          childWidget: Text('EDIT'),
        ),
        const SizedBox(width: 10),
        CustomRoundedBlackButton(
          childWidget: Text('DELETE'),
        )
      ],
    );
  }
}
