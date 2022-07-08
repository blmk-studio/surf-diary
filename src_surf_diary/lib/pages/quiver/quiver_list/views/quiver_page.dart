import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'controllers/quiver_list_page_controller.dart';
import 'widgets/quiver_list_appbar.dart';
import 'widgets/quiver_list_view.dart';

class QuiverPage extends GetView<QuiverPageController> {
  const QuiverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QuiverListAppBar(
        title: 'My Quiver',
      ),
      body: QuiverListView(),
    );
  }
}
