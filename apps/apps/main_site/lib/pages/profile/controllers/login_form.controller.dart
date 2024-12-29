import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:packages_utils/utils.dart' show AbstractFormFieldController;

class LoginFormController extends AbstractFormFieldController {
  final _emailFieldKey = GlobalKey<FormBuilderFieldState>();
  final _passwordFieldKey = GlobalKey<FormBuilderFieldState>();

  GlobalKey<FormBuilderFieldState> get emailFieldKey => _emailFieldKey;
  GlobalKey<FormBuilderFieldState> get passwordFieldKey => _passwordFieldKey;

  @override
  Future<String> submit() async {
    if (!validate()) {
      return Future.error("form not valid");
    }

    //TODO: call api to login user

    return Future.value("form valid");
  }
}
