import 'package:flutter/material.dart';
import 'package:packages_utils/navigation/navigator_item.dart';

class BottomNavigatorItem extends NavigatorItem {
  BottomNavigatorItem({
    required super.label,
    required super.icon,
    required super.page,
    required super.route,
  }) {
    super.key = ValueKey("bottom-navigator-$label");
  }
}
