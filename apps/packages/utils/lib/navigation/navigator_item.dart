import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigatorItem {
  final String label;
  final Icon icon;
  final String route;
  final Widget page;
  late Bindings? bindings;
  late final ValueKey key;

  NavigatorItem({
    required this.label,
    required this.icon,
    required this.route,
    this.bindings,
    required this.page,
  });
}
