import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class TextFieldWidget extends StatefulWidget {
  final String name;
  final GlobalKey<FormBuilderFieldState> fieldKey;
  final String label;
  final TextInputType? keyboardType;
  final String? hintText;
  final bool? enabled;
  final bool? readOnly;
  final FormFieldValidator<String>? validator;
  TextFieldWidget({
    super.key,
    required this.name,
    required this.label,
    this.hintText,
    this.enabled,
    this.readOnly,
    this.keyboardType,
    this.validator,
    required this.fieldKey,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _obscureText = true;

  void _setVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      key: widget.fieldKey,
      name: widget.name,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      obscureText: widget.keyboardType == TextInputType.visiblePassword
          ? _obscureText
          : false,
      validator: widget.validator,
      enabled: widget.enabled ?? true,
      readOnly: widget.readOnly ?? false,
      obscuringCharacter: '•',
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hintText,
        suffixIcon: widget.keyboardType == TextInputType.visiblePassword
            ? IconButton(
                icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility),
                onPressed: _setVisibility,
              )
            : null,
      ),
    );
  }
}
