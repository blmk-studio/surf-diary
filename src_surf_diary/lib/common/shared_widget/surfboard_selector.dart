import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:src_surf_diary/common/shared_widget/surfboard_image.dart';

class SurfboardSelector extends StatelessWidget {
  const SurfboardSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(enlargeCenterPage: true, height: 12.h),
      items: [
        SurfboardImg(imgPath: "assets/img/boards/egg.svg"),
        SurfboardImg(imgPath: "assets/img/boards/fish.svg"),
        SurfboardImg(imgPath: "assets/img/boards/gun.svg"),
        SurfboardImg(imgPath: "assets/img/boards/long.svg")
      ],
    );
  }
}
