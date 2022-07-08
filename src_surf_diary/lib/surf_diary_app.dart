import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:src_surf_diary/auth/controllers/auth_controller.dart';
import 'package:src_surf_diary/routes/app_pages.dart';

class SurfDiaryApp extends StatelessWidget {
  // This widget is the root of your application.

  final AuthController authController = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: authController,
        builder: (_) {
          return Sizer(builder: (context, orientation, deviceType) {
            return const GetMaterialApp(
              debugShowCheckedModeBanner: false,
              onGenerateRoute: AppPages.routes,
              title: 'Surf Diary',
            );
          });
        });
  }
}
