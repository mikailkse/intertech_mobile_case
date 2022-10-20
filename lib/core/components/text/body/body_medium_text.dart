import 'package:flutter/material.dart';

import '../../../init/theme/lightTheme/endeavour_theme.dart';

class BodyMediumText extends Text {
  BodyMediumText({
    Key? key,
    required String text,
    required Color color,
    int? maxLines,
    TextAlign? textAlign,
    TextOverflow? overflow,
  }) : super(
          key: key,
          text,
          overflow: overflow,
          textScaleFactor: 1,
          textAlign: textAlign,
          maxLines: maxLines,
          style: endeavourTheme.textTheme.bodyText2!.copyWith(
            color: color,
            fontWeight: endeavourTheme.textTheme.bodyText2!.fontWeight,
            fontSize: endeavourTheme.textTheme.bodyText2!.fontSize,
            fontStyle: endeavourTheme.textTheme.bodyText2!.fontStyle,
          ),
        );
}
