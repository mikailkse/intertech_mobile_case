import 'package:flutter/material.dart';

import '../../../init/theme/lightTheme/endeavour_theme.dart';

class ButtonLargeText extends Text {
  ButtonLargeText({Key? key, required String text, required Color color})
      : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          style: endeavourTheme.textTheme.button!.copyWith(
            color: color,
            fontWeight: endeavourTheme.textTheme.button!.fontWeight,
            fontSize: endeavourTheme.textTheme.button!.fontSize,
            fontStyle: endeavourTheme.textTheme.button!.fontStyle,
          ),
        );
}
