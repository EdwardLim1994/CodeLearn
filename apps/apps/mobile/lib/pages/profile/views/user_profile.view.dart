import 'package:code_learn_mobile/widgets/layout/base.layout.dart';
import 'package:flutter/widgets.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      child: Text("User Profile"),
    );
  }
}
