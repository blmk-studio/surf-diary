import 'dart:async';

import 'package:get/get.dart';
import 'package:src_surf_diary/auth/services/auth_service_interface.dart';
import 'package:src_surf_diary/common/enums/auth_state.dart';
import 'package:src_surf_diary/common/models/app_user.dart';
import 'package:src_surf_diary/routes/app_pages.dart';

class AuthController extends GetxController {
  final IAuthService authService;
  late StreamSubscription _authSubscription;

  final Rx<AuthState> authState = Rx(AuthState.signedOut);
  final Rx<AppUser?> authUser = Rx(null);

  AuthController({required this.authService});

  @override
  void onInit() async {
    // Just for testing. Allows the splash screen to be shown a few seconds
    await Future.delayed(
        const Duration(seconds: 2)); // await for init material app
    _authSubscription = authService.user.listen(_authStateChanged);
    super.onInit();
  }

  void _authStateChanged(AppUser? user) {
    Get.lazyPut<AppUser?>(() => user, fenix: true);
    if (user == null) {
      authState.value = AuthState.signedOut;
      Get.offAllNamed(Routes.login);
    } else {
      authState.value = AuthState.signedIn;
      Get.offAllNamed(Routes.home);
    }
    authUser.value = user;
  }

  Future<void> signOut() async {
    await authService.signOut();
  }

  @override
  void onClose() {
    _authSubscription.cancel();
    super.onClose();
  }
}
