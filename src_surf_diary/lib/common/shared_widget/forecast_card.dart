import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:src_surf_diary/common/constants/global_const.dart';
import 'package:src_surf_diary/common/shared_widget/rating_info.dart';

import 'wave_info.dart';
import 'wind_info.dart';

class ForecastCard extends StatelessWidget {
  const ForecastCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      height: 25.h,
      child: Container(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Text(
                'El Balneario',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 5.w),
              ),
              left: 30,
              top: 20,
            ),
            Positioned(
              child: RatingInfo(rating: 4),
              right: 30,
              top: 20,
            ),
            Positioned(
              child: WaveInfo(),
              left: 65,
              top: 65,
            ),
            Positioned(
              child: WavePeriodInfo(),
              left: 20,
              top: 130,
            ),
            Positioned(
              child: WindInfo(),
              right: 20,
              top: 130,
            )
          ],
        ),
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
