import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoardMemberIconRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('board_member.svg'),
        const SizedBox(width: 5),
        Text('Board member'),
        const SizedBox(width: 5),
        SvgPicture.asset('copy.svg'),
      ],
    );
  }
}
