import 'package:code_learn_mobile/pages/profile/views/user_profile.view.dart';
import 'package:packages_utils/navigation/bottom_navigator_item.dart';
import "package:flutter/material.dart";

final bottomNavigationItems = [
  BottomNavigatorItem(
    icon: Icon(Icons.star),
    label: "Featured",
    route: "/featured",
    page: Placeholder(),
  ),
  BottomNavigatorItem(
    icon: Icon(Icons.person),
    label: "Profile",
    route: "/profile",
    page: UserProfileView(),
  ),
];
