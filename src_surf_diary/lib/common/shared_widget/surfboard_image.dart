import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SurfboardImg extends StatelessWidget {
  final String imgPath;
  const SurfboardImg({required this.imgPath, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: SvgPicture.asset(
        imgPath,
      ),
    );
  }
}
