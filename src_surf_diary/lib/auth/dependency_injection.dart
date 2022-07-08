import 'package:get/get.dart';
import 'package:src_surf_diary/auth/controllers/auth_controller.dart';
import 'package:src_surf_diary/auth/services/firebase_auth_service.dart';
import 'package:src_surf_diary/auth/services/auth_service_interface.dart';

class AuthDependencies extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IAuthService>(() => FirebaseAuthService());
    Get.lazyPut(() => AuthController(authService: Get.find()));
  }
}
