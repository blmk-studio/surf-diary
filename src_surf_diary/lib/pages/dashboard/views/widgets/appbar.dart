import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:src_surf_diary/auth/services/auth_service_interface.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool isTransparent;
  const DashboardAppBar({this.title, this.isTransparent = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: (isTransparent) ? Colors.transparent : Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            onPressed: () {
              IAuthService serv = Get.find();
              serv.signOut();
            },
          ),
        ],
        title: (!isTransparent && title != null)
            ? Text(title!,
                style: TextStyle(
                  color: Colors.black,
                ))
            : null,
        centerTitle: true,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
