import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:src_surf_diary/common/enums/direction_enum.dart';
import 'package:src_surf_diary/common/shared_widget/direction_arrow.dart';

class WindInfo extends StatelessWidget {
  const WindInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
              width: 7.w, child: Image.asset('assets/img/svg_icons/wind.png')),
          SizedBox(
            width: 4.w,
          ),
          Text('15 Km/h',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 4.w)),
          SizedBox(
            width: 2.w,
          ),
          DirectionArrow(
            direction: Directions.east,
          )
        ],
      ),
    );
  }
}
