import 'package:fh_home_coding_task/app/view/widget_library/custom_icon_text_row.dart';
import 'package:fh_home_coding_task/app/view/widget_library/custom_rounded_black_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: SvgPicture.asset(
                          'common_area.svg',
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                      ),
                      Text(
                        'Common area',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.01,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomRoundedBlackButton(
                        childWidget: Row(
                          children: [
                            CustomIconTextRow(
                                icon: Icon(Icons.add), text: 'CONTACT'),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
