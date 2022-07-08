import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:src_surf_diary/common/shared_widget/sd_appbar.dart';
import 'package:src_surf_diary/common/shared_widget/surfboard_selector.dart';
import 'package:src_surf_diary/common/shared_widget/wave_range_slider/wave_range_slider.dart';

class SurfboardPage extends StatelessWidget {
  const SurfboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SDAppbar(isTransparent: true),
      body: Column(children: [
        Text(
          "El Long",
          style: TextStyle(fontSize: 3.h, fontWeight: FontWeight.w600),
        ),
        Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Shape"),
            )),
        SurfboardSelector(),
        Text("9'9, 12/5 17 24L"),
        SizedBox(
          height: 5.h,
        ),
        WaveRangeSlider(),
        Text("Select best wave height for surfboard"),
      ]),
    );
  }
}
