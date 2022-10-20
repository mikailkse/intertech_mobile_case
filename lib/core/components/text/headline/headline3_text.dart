import 'package:flutter/material.dart';

import '../../../init/theme/lightTheme/endeavour_theme.dart';

class Headline3Text extends Text {
  Headline3Text({Key? key, required String text, required Color color})
      : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          style: endeavourTheme.textTheme.headline3!.copyWith(
            color: color,
            fontWeight: endeavourTheme.textTheme.headline3!.fontWeight,
            fontSize: endeavourTheme.textTheme.headline3!.fontSize,
            fontStyle: endeavourTheme.textTheme.headline3!.fontStyle,
          ),
        );
}
