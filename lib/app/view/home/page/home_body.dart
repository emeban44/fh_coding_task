import 'package:fh_home_coding_task/app/view/home/widgets/common_area_svg_image.dart';
import 'package:fh_home_coding_task/app/view/home/widgets/common_area_text.dart';
import 'package:fh_home_coding_task/app/view/widget_library/custom_icon_text_row.dart';
import 'package:fh_home_coding_task/app/view/widget_library/custom_rounded_black_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCommonAreaRow(context),
              _buildTopRightButtonRow(context),
            ],
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 12.5),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            //height: 125,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('board_member.svg'),
                                    Text('Board member'),
                                    SvgPicture.asset('copy.svg'),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    const SizedBox(width: 5),
                                    Text('UPDATED AT'),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    CustomRoundedBlackButton(
                                      childWidget: Text('EDIT'),
                                    ),
                                    const SizedBox(width: 5),
                                    CustomRoundedBlackButton(
                                      childWidget: Text('DELETE'),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('phone.svg'),
                                  Text('+47 444 44 444'),
                                  SvgPicture.asset('copy.svg'),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Text('01.01.1970'),
                            ],
                          ),
                          Text('Priority 1'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('@ mario@castle.com'),
                              SvgPicture.asset('copy.svg'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 15,
                right: 5,
                child: Icon(
                  Icons.keyboard_arrow_up_outlined,
                  size: 25,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCommonAreaRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [CommonAreaSvgImage(), CommonAreaText()],
    );
  }

  Widget _buildTopRightButtonRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        CustomRoundedBlackButton(
          horizontalMargin: 5,
          childWidget: CustomIconTextRow(
            iconData: Icons.add,
            text: 'CONTACT',
          ),
        ),
        CustomRoundedBlackButton(
          horizontalMargin: 5,
          childWidget: CustomIconTextRow(
            iconData: Icons.add,
            text: 'ROOM',
          ),
        ),
        CustomRoundedBlackButton(
          horizontalMargin: 5,
          childWidget: CustomIconTextRow(
            iconData: Icons.add,
            text: 'DEVICE',
          ),
        ),
        CustomRoundedBlackButton(
          horizontalMargin: 5,
          childWidget: CustomIconTextRow(
            iconData: Icons.arrow_forward_ios,
            iconSize: 15,
            isIconLast: true,
            text: '8 NOTES',
          ),
        ),
      ],
    );
  }
}
