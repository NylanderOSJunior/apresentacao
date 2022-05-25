import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final bool autoFocus;
  final String? initialValue;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType? textInputType;
  final String label;
  final Function(String?)? onSaved;
  final Function(String?)? onChanged;
  const TextFieldWidget({
    Key? key,
    this.autoFocus = false,
    this.initialValue,
    this.prefixIcon,
    this.validator,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
    this.label = '',
    this.controller,
    this.onSaved,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: autoFocus,
      keyboardType: textInputType,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        prefixIcon: prefixIcon,
        labelText: label,
      ),
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
    );
  }
}
