import 'package:code_learn_mobile/constant/navigation.constant.dart';
import "package:flutter/material.dart";
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:packages_utils/navigation/navigation.base.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: "/",
      page: () => Placeholder(),
    ),
    ...generateRoutePage(items: bottomNavigationItems),
  ];
}
