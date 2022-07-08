import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:src_surf_diary/surf_diary_app.dart';

import 'auth/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MainDependencies.setDependencies();
  await Firebase.initializeApp();
  runApp(SurfDiaryApp());
}

class MainDependencies {
  static void setDependencies() {
    AuthDependencies().dependencies();
  }
}
