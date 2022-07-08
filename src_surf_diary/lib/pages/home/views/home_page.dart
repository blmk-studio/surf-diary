import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:src_surf_diary/common/models/app_user.dart';
import 'package:src_surf_diary/common/shared_widget/bottom_navbar.dart';
import 'package:src_surf_diary/pages/dashboard/views/dashboard_page.dart';
import 'package:src_surf_diary/pages/home/views/controllers/home_controller.dart';
import 'package:src_surf_diary/pages/quiver/quiver_list/views/quiver_page.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppUser? user = Get.find();
    List<Widget> _pageList = [
      DashboardPage(),
      QuiverPage(),
      Text('3'),
      Text('4')
    ];
    return Obx(
      () => Scaffold(
        bottomNavigationBar: SDBottomNavBar(
          changePage: controller.changePage,
          selectedIndex: controller.selectedPage.value,
        ),
        body: _pageList[controller.selectedPage.value],
      ),
    );
  }
}
