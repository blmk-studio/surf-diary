import 'package:get/get.dart';

class WaveRangeController extends GetxController {
  final _initHeight = 0.5.obs;
  final _finalHeight = 2.5.obs;

  double get initHeight => _initHeight.value;
  String get initHeightString => initHeight.toPrecision(2).toString();
  set initHeight(double value) => _initHeight.value = value;

  double get finalHeight => _finalHeight.value;
  String get finalHeightString =>
      finalHeight >= 3 ? "XL" : finalHeight.toPrecision(2).toString();
  set finalHeight(double value) => _finalHeight.value = value;
}
