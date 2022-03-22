import 'package:fh_home_coding_task/app/helpers/edge_insets_helper.dart';
import 'package:fh_home_coding_task/app/theme/theme_data.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/bold_text.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/box_icon_title_row.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/smoke_detector_box/smoke_detector_button_row.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/water_detector_box/water_detector_button_row.dart';
import 'package:fh_home_coding_task/app/view/widget_library/custom_divider_space.dart';
import 'package:fh_home_coding_task/app/view/widget_library/detector_status_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WaterDetectorBoxBody extends StatelessWidget {
  const WaterDetectorBoxBody({Key? key}) : super(key: key);

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
                    children: [
                      const BoxIconTitleRow(
                        assetPath: 'assets/water_leak.svg',
                        title: 'Water detector',
                      ),
                      const SizedBox(height: 15),
                      const BoldText('ADDRESS'),
                      const SizedBox(height: 5),
                      const BoldText('DEVICE ID'),
                    ],
                  ),
                ),
                const CustomDividerSpace(),
                SizedBox(
                  width: getHomeColumnWidth(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DetectorStatusRow(status: 'Online'),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '2_0',
                            style: getBodyTextStyle(context),
                          ),
                          const SizedBox(height: 5),
                          SvgPicture.asset('assets/copy.svg'),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '1',
                        style: getBodyTextStyle(context),
                      ),
                    ],
                  ),
                ),
                const CustomDividerSpace(),
                const DetectorStatusRow(status: 'Secured'),
                const CustomDividerSpace(),
                const DetectorStatusRow(status: 'Configured'),
              ],
            ),
          ),
          const SizedBox(height: 5),
          const WaterDetectorButtonRow(),
        ],
      ),
    );
  }
}
