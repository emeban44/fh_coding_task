import 'package:fh_home_coding_task/app/helpers/edge_insets_helper.dart';
import 'package:fh_home_coding_task/app/theme/theme_data.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/box_icon_title_row.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/bold_text.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/positioned_arrow_up.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/smoke_detector_box/smoke_detector_button_row.dart';
import 'package:fh_home_coding_task/app/view/widget_library/custom_divider_space.dart';
import 'package:fh_home_coding_task/app/view/widget_library/detector_data_row.dart';
import 'package:fh_home_coding_task/app/view/widget_library/detector_status_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SmokeDetectorBoxBody extends StatelessWidget {
  const SmokeDetectorBoxBody({Key? key}) : super(key: key);

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
            _buildSmokeDetectorColumn(context),
            const CustomDividerSpace(),
            _buildSmokeDataColumn(context),
            const CustomDividerSpace(),
            const DetectorStatusRow(status: 'Tampered'),
            const CustomDividerSpace(),
            const DetectorStatusRow(status: 'Configured'),
          ],
        ),
        const SizedBox(height: 15),
        const SmokeDetectorButtonRow(),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget _buildSmokeDetectorColumn(BuildContext context) {
    return SizedBox(
      width: getHomeColumnWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          BoxIconTitleRow(
            assetPath: 'assets/smoke_detector.svg',
            title: 'Smoke detector',
          ),
          SizedBox(height: 15),
          BoldText('ADDRESS'),
          SizedBox(height: 5),
          BoldText('DEVICE ID'),
        ],
      ),
    );
  }

  Widget _buildSmokeDataColumn(BuildContext context) {
    return SizedBox(
      width: getHomeColumnWidth(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DetectorStatusRow(status: 'Offline'),
          const SizedBox(height: 15),
          const DetectorDataRow('2_0'),
          const SizedBox(height: 5),
          Text('1', style: getBodyTextStyle(context)),
        ],
      ),
    );
  }
}
