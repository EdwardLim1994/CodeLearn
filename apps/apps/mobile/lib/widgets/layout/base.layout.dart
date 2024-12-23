import 'package:code_learn_mobile/constant/navigation.constant.dart';
import 'package:flutter/material.dart';
import 'package:packages_widgets/common/common.base.dart';

class BaseLayout extends StatelessWidget {
  final Widget child;
  const BaseLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationWidget(items: bottomNavigationItems),
      body: SafeArea(
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
