import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RatingInfo extends StatelessWidget {
  final int rating;
  const RatingInfo({this.rating = 1, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List<Widget>.filled(rating, RatingStar()),
    );
  }
}

class RatingStar extends StatelessWidget {
  const RatingStar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 0.5.w),
        width: 4.w,
        child: Image.asset('assets/img/svg_icons/star.png'));
  }
}
