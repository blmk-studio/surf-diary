import 'package:get/get.dart';

class HomeController extends GetxController {
  final selectedPage = 0.obs;
  final _title = ''.obs;
  List<String> titles = ['Home', 'Surfboards', 'Journal', 'Spots'];
  @override
  onInit() {
    super.onInit();
    _title.value = titles[selectedPage.value];
  }

  String get title => _title.value;
  void changePage(int index) async {
    selectedPage.value = index;
    _title.value = titles[index];
  }
}
