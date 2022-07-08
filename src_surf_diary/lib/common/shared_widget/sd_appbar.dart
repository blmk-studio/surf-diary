import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SDAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool isTransparent;
  final List<Widget>? actions;
  const SDAppbar(
      {this.title, this.isTransparent = false, this.actions, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: (isTransparent) ? Colors.transparent : Colors.white,
        elevation: 0,
        actions: actions,
        iconTheme: IconThemeData(color: Colors.black),
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
  Size get preferredSize => Size.fromHeight(8.h);
}
