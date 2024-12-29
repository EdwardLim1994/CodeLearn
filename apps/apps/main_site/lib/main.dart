import 'package:code_learn_main_site/app.routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: "/profile",
      getPages: AppRoutes.routes,
    ),
  );
}
