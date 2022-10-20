import 'package:flutter/material.dart';

import '../../constants/color/app_colors.dart';
import '../../init/theme/lightTheme/endeavour_theme.dart';

class CustomTextFormField extends TextFormField {
  final String hintText;
  final String labelText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;

  CustomTextFormField({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
  }) : super(
          key: key,
          style: endeavourTheme.textTheme.bodyMedium!.copyWith(
            color: AppColors.gunPowder,
          ),
          obscureText: obscureText!,
          validator: (value) =>
              value!.isNotEmpty ? null : 'Lütfen eksik bilgileri doldurun.',
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            labelText: labelText,
            prefixIcon: prefixIcon,
            labelStyle: endeavourTheme.inputDecorationTheme.labelStyle,
            filled: endeavourTheme.inputDecorationTheme.filled,
            fillColor: endeavourTheme.inputDecorationTheme.fillColor,
            hintStyle: endeavourTheme.inputDecorationTheme.hintStyle,
            errorStyle: endeavourTheme.inputDecorationTheme.errorStyle,
            errorBorder: endeavourTheme.inputDecorationTheme.errorBorder,
            disabledBorder: endeavourTheme.inputDecorationTheme.disabledBorder,
            focusedErrorBorder:
                endeavourTheme.inputDecorationTheme.focusedBorder,
            focusedBorder: endeavourTheme.inputDecorationTheme.focusedBorder,
            enabledBorder: endeavourTheme.inputDecorationTheme.enabledBorder,
          ),
        );
}
