import 'package:code_learn_main_site/constant/navigation.constant.dart';
import 'package:flutter/widgets.dart';
import 'package:packages_widgets/common/common.base.dart';
import 'package:packages_widgets/layout/base.layout.dart';

class UserProfileLayout extends StatelessWidget {
  final Widget child;
  const UserProfileLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
        bottomNavigationBar:
            BottomNavigationWidget(items: bottomNavigationItems),
        child: child);
  }
}
