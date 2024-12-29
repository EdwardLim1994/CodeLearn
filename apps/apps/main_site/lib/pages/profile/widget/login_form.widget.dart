import 'package:code_learn_main_site/pages/profile/controllers/login_form.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:packages_widgets/form_fields/form_fields.base.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final LoginFormController _loginFormController =
      Get.put(LoginFormController());

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _loginFormController.formKey,
      child: Column(
        children: [
          TextFieldWidget(
            fieldKey: _loginFormController.emailFieldKey,
            name: "email",
            label: "Email",
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.email(),
            ]),
          ),
          TextFieldWidget(
            fieldKey: _loginFormController.passwordFieldKey,
            name: "password",
            label: "Password",
            keyboardType: TextInputType.visiblePassword,
            validator: FormBuilderValidators.required(),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_loginFormController.formKey.currentState!
                  .saveAndValidate()) {
                print("Form is valid");
              } else {
                print("Form is invalid");
              }
              print(_loginFormController.formKey.currentState!.value);
            },
            child: const Text("Login"),
          ),
        ],
      ),
    );
  }
}
