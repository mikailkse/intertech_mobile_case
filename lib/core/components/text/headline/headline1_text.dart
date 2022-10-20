import 'package:flutter/material.dart';

import '../../../init/theme/lightTheme/endeavour_theme.dart';

class Headline1Text extends Text {
  Headline1Text({
    Key? key,
    required String text,
    required Color color,
    TextOverflow? overflow,
    int? maxLines,
    TextAlign? textAlign,
  }) : super(
          key: key,
          text,
          overflow: overflow,
          textScaleFactor: 1,
          textAlign: textAlign,
          maxLines: maxLines,
          style: endeavourTheme.textTheme.headline1!.copyWith(
            color: color,
            fontWeight: endeavourTheme.textTheme.headline1!.fontWeight,
            fontSize: endeavourTheme.textTheme.headline1!.fontSize,
            fontStyle: endeavourTheme.textTheme.headline1!.fontStyle,
          ),
        );
}
