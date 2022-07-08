import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:src_surf_diary/common/enums/direction_enum.dart';
import 'package:src_surf_diary/common/helpers/direction_solver.dart';

class DirectionArrow extends StatelessWidget {
  final Directions direction;
  final int size;
  const DirectionArrow({required this.direction, this.size = 7, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: new AlwaysStoppedAnimation(directionSolver(direction) / 360),
      child: Container(
          width: size.w,
          child: Image.asset('assets/img/svg_icons/up-arrow.png')),
    );
  }
}
