import 'package:src_surf_diary/common/constants/direction_degrees_consts.dart';
import 'package:src_surf_diary/common/enums/direction_enum.dart';

int directionSolver(Directions direction) {
  int degrees = 0;
  switch (direction) {
    case Directions.north:
      degrees = north_degrees;
      break;
    case Directions.south:
      degrees = south_degrees;
      break;
    case Directions.east:
      degrees = east_degrees;
      break;
    case Directions.west:
      degrees = west_degrees;
      break;
    case Directions.sEast:
      degrees = south_east_degrees;
      break;
    case Directions.sWest:
      degrees = south_west_degrees;
      break;
    case Directions.nEast:
      degrees = north_east_degrees;
      break;
    case Directions.nWest:
      degrees = north_west_degrees;
      break;
    default:
  }
  return degrees;
}
