import 'package:flutter/material.dart';
import 'package:src_surf_diary/common/constants/global_const.dart';
import 'package:src_surf_diary/common/shared_widget/section_title.dart';
import 'package:src_surf_diary/common/shared_widget/spot_card.dart';
import 'package:src_surf_diary/common/size_config.dart';

class PopularSpots extends StatelessWidget {
  const PopularSpots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Working Spots",
          press: () {},
        ),
        VerticalSpacing(of: 20),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: getProportionateScreenWidth(kDefaultPadding),
              ),
              SpotCard(
                isFullCard: false,
              ),
              SizedBox(
                width: getProportionateScreenWidth(kDefaultPadding),
              ),
              SpotCard(
                isFullCard: false,
              ),
              SizedBox(
                width: getProportionateScreenWidth(kDefaultPadding),
              ),
              SpotCard(
                isFullCard: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
