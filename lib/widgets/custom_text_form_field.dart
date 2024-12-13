import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextCapitalization capitalization;
  final Map<String, String> formValues;
  final String formProperty;
  final String? Function(String?)?
      validator; // Agregamos el parámetro validator

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    required this.obscureText,
    required this.capitalization,
    required this.formProperty,
    required this.formValues,
    this.validator, // Lo recibimos en el constructor
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: capitalization,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: validator, // Usamos el parámetro validator aquí
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: Icon(suffixIcon),
        icon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
