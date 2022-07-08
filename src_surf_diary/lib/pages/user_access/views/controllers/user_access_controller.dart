import 'package:get/state_manager.dart';
import 'package:src_surf_diary/auth/services/auth_service_interface.dart';

class UserAccessController extends GetxController {
  final IAuthService authService;
  UserAccessController({required this.authService});

  Future signInAnon() async {
    await authService.signInAnon();
  }

  Future signInGoogle() async {
    await authService.signInGoogle();
  }
}
