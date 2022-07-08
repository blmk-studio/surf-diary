import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:src_surf_diary/common/shared_widget/sd_card.dart';
import 'package:src_surf_diary/common/shared_widget/surfboard_image.dart';
import 'package:src_surf_diary/routes/app_pages.dart';

class SurfboardCard extends StatelessWidget {
  const SurfboardCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Get.toNamed(Routes.surfboard),
        child: SDCard(
          height: 20.h,
          child: Column(
            children: [
              SizedBox(
                height: 1.h,
              ),
              Text('La fish'),
              SizedBox(
                height: 2.h,
              ),
              SurfboardImg(
                imgPath: 'assets/img/boards/fish.svg',
              ),
              SizedBox(
                height: 2.h,
              ),
              Text("5'8 1/2 3 38L")
            ],
          ),
        ),
      ),
    );
  }
}
