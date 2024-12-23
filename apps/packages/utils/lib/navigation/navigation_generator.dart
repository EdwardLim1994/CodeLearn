import "package:flutter/material.dart";
import "package:get/get_navigation/src/routes/get_route.dart";
import "package:packages_utils/navigation/navigator_item.dart";

List<BottomNavigationBarItem> generateBottomNagivation(
    {required List<NavigatorItem> items}) {
  return items
      .map(
        (NavigatorItem item) => BottomNavigationBarItem(
          icon: item.icon,
          label: item.label,
          key: item.key,
        ),
      )
      .toList();
}

List<GetPage> generateRoutePage({required List<NavigatorItem> items}) {
  return items
      .map(
        (NavigatorItem item) => GetPage(
          name: item.route,
          page: () => item.page,
        ),
      )
      .toList();
}
