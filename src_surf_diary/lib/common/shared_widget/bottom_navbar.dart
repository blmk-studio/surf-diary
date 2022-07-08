import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class SDBottomNavBar extends StatelessWidget {
  final Function(int index) changePage;
  final int selectedIndex;
  SDBottomNavBar(
      {Key? key, required this.changePage, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 7.h,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(
                icon: "assets/img/svg_icons/big-lighhouse.svg",
                press: () {
                  changePage(0);
                },
                isActive: selectedIndex == 0,
              ),
              NavItem(
                icon: "assets/img/svg_icons/surfboard.svg",
                press: () {
                  changePage(1);
                },
                isActive: selectedIndex == 1,
              ),
              NavItem(
                icon: "assets/img/svg_icons/windrose.svg",
                isActive: selectedIndex == 2,
                press: () {
                  changePage(2);
                },
              ),
              NavItem(
                icon: "assets/img/svg_icons/map-with-placeholder.svg",
                press: () {
                  changePage(3);
                },
                isActive: selectedIndex == 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.icon,
    required this.press,
    this.isActive = false,
  }) : super(key: key);
  final String icon;
  final GestureTapCallback press;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(5),
        height: 7.h,
        width: 20.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (isActive)
              BoxShadow(
                offset: Offset(5, 5),
                blurRadius: 10,
                color: Color(0xFFE9E9E9).withOpacity(0.56),
              )
          ],
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              color: Color(0xFF3F4168),
              height: 28,
            ),
            // Text(
            //   title,
            //   style: TextStyle(
            //     fontSize: 11,
            //     fontWeight: FontWeight.bold,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
