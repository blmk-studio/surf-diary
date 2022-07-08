import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:src_surf_diary/common/constants/global_const.dart';

class SDCard extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  const SDCard({Key? key, required this.child, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 90.w,
      height: height ?? 25.h,
      child: Container(
        child: child,
        decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20),
          boxShadow: [kDefualtShadow],
          // image: DecorationImage(
          //     image: AssetImage('assets/img/backgrounds/unnamed.jpg'),
          //     fit: BoxFit.cover),
        ),
      ),
    );
  }
}
