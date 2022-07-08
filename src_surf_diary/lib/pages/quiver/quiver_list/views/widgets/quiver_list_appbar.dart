import 'package:flutter/material.dart';

class QuiverListAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool isTransparent;
  const QuiverListAppBar({this.title, this.isTransparent = false, Key? key})
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
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: () {},
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
