import 'package:src_surf_diary/common/models/app_user.dart';

abstract class IAuthService {
  Future<AppUser?> signInEmailPassword(
      {required String email, required String password});
  Future<AppUser?> signInAnon();
  Future<AppUser?> signInGoogle();
  Stream<AppUser?> get user;
  Future signOut();
}
