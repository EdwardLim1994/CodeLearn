import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:packages_utils/controllers/abstract_base_controller.dart';

abstract class AbstractFormFieldController<T> extends AbstractBaseController {
  final formKey = GlobalKey<FormBuilderState>();

  Future<T> submit();

  bool validate() {
    return formKey.currentState!.saveAndValidate();
  }
}
