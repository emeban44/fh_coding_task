import 'package:fh_home_coding_task/app/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoardMemberIconRow extends StatelessWidget {
  const BoardMemberIconRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/board_member.svg'),
        const SizedBox(width: 5),
        Text(
          'Board member',
          style: getBodyTextStyle(context),
        ),
        const SizedBox(width: 5),
        SvgPicture.asset('assets/copy.svg'),
      ],
    );
  }
}
