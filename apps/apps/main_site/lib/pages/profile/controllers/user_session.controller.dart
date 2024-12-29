import 'package:code_learn_main_site/dto/user_profile.dto.dart';
import 'package:get/get.dart';
import 'package:packages_utils/utils.dart';

class UserSessionController extends AbstractBaseController {
  final RxString _token = ''.obs;
  final Rx<UserProfileDTO> _user = Rx(UserProfileDTO());

  String get token => _token.value;
  UserProfileDTO get user => _user.value;
}
