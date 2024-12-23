import 'package:flutter/material.dart';

class NavigatorItem {
  final String label;
  final Icon icon;
  final String route;
  final Widget page;
  late final ValueKey key;

  NavigatorItem({
    required this.label,
    required this.icon,
    required this.route,
    required this.page,
  });
}
