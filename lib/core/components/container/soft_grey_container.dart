import 'package:flutter/material.dart';

import '../../constants/color/app_colors.dart';
import '../text/headline/headline5_text.dart';

class SoftGreyContainer extends Container {
  SoftGreyContainer({
    required String text,
    Key? key,
  }) : super(
          key: key,
          width: double.infinity,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: AppColors.softGrey),
          child: Headline5Text(
            text: text,
            color: AppColors.white,
          ),
        );
}
