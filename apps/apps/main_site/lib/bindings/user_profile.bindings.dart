import 'package:code_learn_main_site/pages/profile/controllers/user_session.controller.dart';
import 'package:get/get.dart';

class UserProfileBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserSessionController>(() => UserSessionController());
  }
}
