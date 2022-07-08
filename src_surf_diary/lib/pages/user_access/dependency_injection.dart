import 'package:get/get.dart';
import 'package:src_surf_diary/pages/user_access/views/controllers/user_access_controller.dart';

class UserAccessDependencies extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserAccessController(authService: Get.find()));
  }
}
