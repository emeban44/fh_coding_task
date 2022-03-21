import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonAreaSvgImage extends StatelessWidget {
  const CommonAreaSvgImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      child: SvgPicture.asset(
        'common_area.svg',
        width: MediaQuery.of(context).size.width * 0.02,
      ),
    );
  }
}
