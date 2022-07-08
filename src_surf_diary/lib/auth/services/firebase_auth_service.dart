import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:src_surf_diary/common/models/app_user.dart';

import 'auth_service_interface.dart';

class FirebaseAuthService implements IAuthService {
  final _auth = FirebaseAuth.instance;

  AppUser? _appUserFromFirebaseUser(User? user) {
    return user != null ? AppUser(uid: user.uid) : null;
  }

  @override
  Future<AppUser?> signInAnon() async {
    try {
      var credential = await _auth.signInAnonymously();
      return _appUserFromFirebaseUser(credential.user);
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  @override
  Future<AppUser?> signInEmailPassword(
      {required String email, required String password}) async {
    try {
      var credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return _appUserFromFirebaseUser(credential.user);
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  @override
  Stream<AppUser?> get user =>
      _auth.authStateChanges().map(_appUserFromFirebaseUser);

  @override
  Future signOut() async {
    await _auth.signOut();
  }

  @override
  Future<AppUser?> signInGoogle() async {
    final googleSignIn = GoogleSignIn();
    final googleAccount = await googleSignIn.signIn();

    if (googleAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleAccount.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      try {
        final userCredential = await _auth.signInWithCredential(credential);
        return AppUser(uid: userCredential.user!.uid);
      } catch (e) {}
    }
  }
}
