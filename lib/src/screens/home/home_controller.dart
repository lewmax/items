import 'package:get/get.dart';

class HomeController extends GetxController {
  final items = RxList<String>([]);

  void addItem() {
    items.add('Item ${items.length}');
  }

  void removeItem() {
    if (items.isEmpty) return;
    items.removeLast();
  }
}
