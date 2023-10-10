


import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController controller;
  final Widget? leading;
  final Widget? trailIcon;
  final bool? obscureText;
  final String? hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final int? maxLines;
  final int? maxLength;
  final bool? enabled;
  final Function()? onTap;
  final Function(String)? onChanged;
  final bool? readOnly;
  final Color? borderColor;
  final Color? labelColor;
  final String label;
  final Color? hintColor;
  final Color? textColor;
  final FocusNode? focusNode;
  final List<PasswordField>? inputFormatters;
  final bool? isPassword;
  final IconData? suffixIcon;

  const PasswordField({
    super.key,
    required this.hintText,
    required this.controller,
    this.suffixIcon,
    this.obscureText,
    this.leading,
    this.keyboardType,
    this.onTap,
    this.readOnly,
    this.trailIcon,
    this.isPassword,
    this.validator,
    this.maxLines,
    this.maxLength,
    this.enabled,
    this.onChanged,
    this.borderColor,
    this.labelColor,
    this.hintColor,
    this.textColor,
    this.focusNode,
    this.inputFormatters,
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      readOnly: readOnly ?? false,
      focusNode: focusNode,
      obscureText: isPassword ?? false,
      cursorHeight: 25,
      validator: validator,
      maxLines: maxLines == null ? 1 : null,
      minLines: 1,
      maxLength: maxLength,
      enabled: enabled,
      onTap: onTap,
      style: TextStyle(color: textColor ?? Colors.black),
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: leading,
        suffixIcon: trailIcon,

      ),

    );
  }
}
