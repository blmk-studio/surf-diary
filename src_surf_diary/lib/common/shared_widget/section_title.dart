import 'package:flutter/material.dart';
import 'package:src_surf_diary/common/constants/global_const.dart';
import 'package:src_surf_diary/common/size_config.dart';
import 'package:sizer/sizer.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final GestureTapCallback press;

  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(kDefaultPadding),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 4.w,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: press,
            child: Text("See All"),
          ),
        ],
      ),
    );
  }
}
