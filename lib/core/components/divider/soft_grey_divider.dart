import 'package:flutter/material.dart';

import '../../constants/color/app_colors.dart';

class SoftDividerGrey extends Divider {
  SoftDividerGrey({
    Key? key,
  }) : super(
          key: key,
          height: 30,
          thickness: 0.5,
          endIndent: 10,
          indent: 10,
          color: AppColors.softGrey,
        );
}
