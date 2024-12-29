import 'package:code_learn_main_site/constant/navigation.constant.dart';
import "package:flutter/material.dart";
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:packages_utils/navigation/navigation.base.dart';
import 'package:packages_widgets/common/common.base.dart';
import 'package:packages_widgets/layout/base.layout.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: "/",
      page: () => BaseLayout(
        bottomNavigationBar:
            BottomNavigationWidget(items: bottomNavigationItems),
        child: Text("Home"),
      ),
    ),
    ...generateRoutePage(items: bottomNavigationItems),
  ];
}
