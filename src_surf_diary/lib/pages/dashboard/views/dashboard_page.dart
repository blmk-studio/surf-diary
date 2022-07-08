import 'package:flutter/material.dart';
import 'package:src_surf_diary/common/shared_widget/forecast_card.dart';
import 'package:src_surf_diary/common/size_config.dart';
import 'package:src_surf_diary/pages/dashboard/views/widgets/header.dart';
import 'widgets/appbar.dart';
import 'widgets/popular_spots.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: DashboardAppBar(
        isTransparent: true,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: SafeArea(
              top: false,
              child: Column(children: [
                DashboardHeader(),
                ForecastCard(),
                VerticalSpacing(),
                PopularSpots(),
              ]))),
    );
  }
}
