import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:src_surf_diary/common/shared_widget/wave_range_slider/wave_range_controller.dart';

class WaveRangeSlider extends StatelessWidget {
  WaveRangeSlider({Key? key}) : super(key: key);
  final controller = Get.put(WaveRangeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => SliderTheme(
          data: SliderThemeData(
              thumbColor: Colors.black87,
              activeTrackColor: Colors.black87,
              inactiveTrackColor: Colors.black54),
          child: RangeSlider(
              values:
                  RangeValues(controller.initHeight, controller.finalHeight),
              max: 3,
              min: 0.5,
              labels: RangeLabels(
                  controller.initHeightString, controller.finalHeightString),
              divisions: 5,
              // activeColor: Colors.black87,
              // inactiveColor: Colors.black38,
              onChanged: (RangeValues values) {
                controller.initHeight = values.start;
                controller.finalHeight = values.end;
              }),
        ));
  }
}
