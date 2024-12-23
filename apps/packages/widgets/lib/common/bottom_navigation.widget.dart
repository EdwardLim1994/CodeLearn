import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:packages_utils/navigation/navigation.base.dart';

class BottomNavigationWidget extends StatelessWidget {
  final List<NavigatorItem> items;
  BottomNavigationWidget({super.key, required this.items});

  final _BottomNavigationWidgetController _controller =
      Get.put(_BottomNavigationWidgetController());

  void _onTap(int index) {
    _controller.setCurrentIndex(index);

    switch (index) {
      case 0:
        Get.toNamed("/");
        break;

      case 1:
        Get.toNamed("/profile");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: generateBottomNagivation(items: items),
      currentIndex: _controller.getCurrentIndex,
      onTap: _onTap,
    );
  }
}

class _BottomNavigationWidgetController extends GetxController {
  final RxInt currentIndex = 0.obs;

  int get getCurrentIndex => currentIndex.value;

  void setCurrentIndex(int index) {
    currentIndex.value = index;
  }
}
