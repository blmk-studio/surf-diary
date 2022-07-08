import 'package:get/instance_manager.dart';
import 'package:src_surf_diary/pages/home/views/controllers/home_controller.dart';

class HomeDependencies extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
