import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../../constants/color/app_colors.dart';

Flushbar<dynamic> showFlushbarWidget(
  String message,
) {
  return Flushbar(
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: AppColors.gunPowder,
    margin: const EdgeInsets.all(8),
    duration: const Duration(seconds: 2),
    icon: const Icon(Icons.info_outline, size: 28.0, color: Colors.white),
    borderRadius: BorderRadius.circular(20),
    title: 'Uyarı',
    message: message,
  );
}
