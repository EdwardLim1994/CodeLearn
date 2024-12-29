import 'package:code_learn_main_site/bindings/user_profile.bindings.dart';
import 'package:code_learn_main_site/pages/profile/controllers/user_session.controller.dart';
import 'package:code_learn_main_site/pages/profile/views/user_profile.view.dart';
import 'package:packages_utils/navigation/bottom_navigator_item.dart';
import "package:flutter/material.dart";
import 'package:packages_widgets/layout/base.layout.dart';

final bottomNavigationItems = [
  BottomNavigatorItem(
    icon: Icon(Icons.star),
    label: "Featured",
    route: "/featured",
    page: BaseLayout(
      child: Text("Featured"),
    ),
  ),
  BottomNavigatorItem(
    icon: Icon(Icons.person),
    label: "Profile",
    route: "/profile",
    bindings: UserProfileBindings(),
    page: UserProfileView(),
  ),
];
