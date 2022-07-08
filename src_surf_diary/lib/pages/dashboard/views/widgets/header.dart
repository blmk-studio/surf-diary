import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:src_surf_diary/common/size_config.dart';
import 'package:src_surf_diary/pages/dashboard/views/widgets/search_field.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/img/backgrounds/unnamed.jpg",
            fit: BoxFit.fill,
            width: double.infinity,
            height: 30.h,
          ),
          Positioned(
            top: 1.h,
            // left: getProportionateScreenWidth(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getProportionateScreenHeight(80)),
                Text(
                  "Surf Journal",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(45),
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade900,
                      height: 0.5),
                ),
                Text(
                  "Recording your best sessions",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          // Positioned(
          //   bottom: getProportionateScreenWidth(-15),
          //   child: SearchField(),
          // )
        ],
      ),
    );
  }
}
