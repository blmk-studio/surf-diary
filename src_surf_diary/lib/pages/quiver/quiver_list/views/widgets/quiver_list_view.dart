import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:src_surf_diary/pages/quiver/quiver_list/views/widgets/surfboard_card.dart';

class QuiverListView extends StatelessWidget {
  const QuiverListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(2.h),
      children: [
        SurfboardCard(),
        SurfboardCard(),
        SurfboardCard(),
      ],
    );
  }
}
