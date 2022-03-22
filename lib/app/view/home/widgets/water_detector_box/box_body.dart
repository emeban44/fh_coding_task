import 'package:fh_home_coding_task/app/helpers/edge_insets_helper.dart';
import 'package:fh_home_coding_task/app/theme/theme_data.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/bold_text.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/box_icon_title_row.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/positioned_arrow_up.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/water_detector_box/water_detector_button_row.dart';
import 'package:fh_home_coding_task/app/view/widget_library/custom_divider_space.dart';
import 'package:fh_home_coding_task/app/view/widget_library/detector_data_row.dart';
import 'package:fh_home_coding_task/app/view/widget_library/detector_status_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WaterDetectorBoxBody extends StatelessWidget {
  const WaterDetectorBoxBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: CustomTheme.blueRoundedBorderDecoration,
          padding: blueBorderedBoxPadding,
          margin: blueBorderedBoxMargin,
          width: double.infinity,
          child: _buildBody(context),
        ),
        const ArrowUpPositioned(),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildWaterDetectorColumn(context),
            const CustomDividerSpace(),
            _buildWaterDataColumn(context),
            const CustomDividerSpace(),
            const DetectorStatusRow(status: 'Secured'),
            const CustomDividerSpace(),
            const DetectorStatusRow(status: 'Configured'),
          ],
        ),
        const SizedBox(height: 15),
        const WaterDetectorButtonRow(),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget _buildWaterDetectorColumn(BuildContext context) {
    return SizedBox(
      width: getHomeColumnWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          BoxIconTitleRow(
            assetPath: 'assets/water_leak.svg',
            title: 'Water detector',
          ),
          SizedBox(height: 15),
          BoldText('ADDRESS'),
          SizedBox(height: 5),
          BoldText('DEVICE ID'),
        ],
      ),
    );
  }

  Widget _buildWaterDataColumn(BuildContext context) {
    return SizedBox(
      width: getHomeColumnWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DetectorStatusRow(status: 'Online'),
          const SizedBox(height: 15),
          const DetectorDataRow('2_0'),
          const SizedBox(height: 5),
          Text('1', style: getBodyTextStyle(context)),
        ],
      ),
    );
  }
}
