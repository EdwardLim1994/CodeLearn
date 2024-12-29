import 'package:code_learn_main_site/pages/profile/layout/user_profile.layout.dart';
import 'package:code_learn_main_site/pages/profile/widget/login_form.widget.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:packages_utils/utils.dart';

class UserProfileView extends GetView<AbstractBaseController> {
  UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return UserProfileLayout(child: LoginFormWidget());
  }
}
