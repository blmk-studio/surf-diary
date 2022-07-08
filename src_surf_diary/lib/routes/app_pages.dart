import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:src_surf_diary/pages/home/dependency_injection.dart';
import 'package:src_surf_diary/pages/home/views/home_page.dart';
import 'package:src_surf_diary/pages/quiver/surfboard_detail/views/surfboard_page.dart';
import 'package:src_surf_diary/pages/splash/views/splash_page.dart';
import 'package:src_surf_diary/pages/user_access/dependency_injection.dart';
import 'package:src_surf_diary/pages/user_access/views/user_access.dart';

part 'app_routes.dart';

class AppPages {
  static Route routes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.main:
        return _buildRoute(settings, page: SplashPage());
      case Routes.login:
        return _buildRoute(settings,
            page: UserAccessPage(), binding: UserAccessDependencies());
      case Routes.home:
        return _buildRoute(settings,
            page: HomePage(), binding: HomeDependencies());
      case Routes.surfboard:
        return _buildRoute(
          settings,
          page: SurfboardPage(),
        );
      default:
        throw Exception('Route does not exists');
    }
  }

  static GetPageRoute _buildRoute(RouteSettings settings,
          {required Widget page, Bindings? binding}) =>
      GetPageRoute(
        settings: settings,
        page: () => page,
        binding: binding,
      );
}
