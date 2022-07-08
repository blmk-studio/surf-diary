import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:src_surf_diary/common/enums/direction_enum.dart';
import 'package:src_surf_diary/common/shared_widget/direction_arrow.dart';

class WaveInfo extends StatelessWidget {
  const WaveInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
              width: 9.w, child: Image.asset('assets/img/svg_icons/wave.png')),
          SizedBox(
            width: 4.w,
          ),
          Text('0,4 - 0,7 m',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 7.w)),
          SizedBox(
            width: 5.w,
          ),
          DirectionArrow(
            direction: Directions.nWest,
            size: 10,
          )
        ],
      ),
    );
  }
}

class WavePeriodInfo extends StatelessWidget {
  const WavePeriodInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
              width: 7.w, child: Image.asset('assets/img/svg_icons/timer.png')),
          SizedBox(
            width: 4.w,
          ),
          Text('10 s',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 4.w)),
        ],
      ),
    );
  }
}
