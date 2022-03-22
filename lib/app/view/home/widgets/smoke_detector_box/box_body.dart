import 'package:fh_home_coding_task/app/helpers/edge_insets_helper.dart';
import 'package:fh_home_coding_task/app/theme/theme_data.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/box_icon_title_row.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/bold_text.dart';
import 'package:fh_home_coding_task/app/view/widget_library/custom_divider_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SmokeDetectorBoxBody extends StatelessWidget {
  const SmokeDetectorBoxBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomTheme.blueRoundedBorderDecoration,
      padding: blueBorderedBoxPadding,
      margin: blueBorderedBoxMargin,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //width: MediaQuery.of(context).size.width * 0.75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: getHomeColumnWidth(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      BoxIconTitleRow(
                        assetPath: 'assets/smoke_detector.svg',
                        title: 'Smoke detector',
                      ),
                      SizedBox(height: 10),
                      BoldText('ADDRESS'),
                      SizedBox(height: 5),
                      BoldText('DEVICE ID'),
                    ],
                  ),
                ),
                const CustomDividerSpace(),
                SizedBox(
                  width: getHomeColumnWidth(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/exclamation.svg'),
                            Text('Offline'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('2_0'),
                          const SizedBox(height: 5),
                          SvgPicture.asset('assets/copy.svg'),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text('1'),
                    ],
                  ),
                ),
                const CustomDividerSpace(),
                SizedBox(
                  width: getHomeColumnWidth(context),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/exclamation.svg'),
                      Text('Offline'),
                    ],
                  ),
                ),
                const CustomDividerSpace(),
                SizedBox(
                  width: getHomeColumnWidth(context),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/exclamation.svg'),
                      Text('Offline'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
