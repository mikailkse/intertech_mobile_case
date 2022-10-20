import 'package:flutter/material.dart';

import '../../../init/theme/lightTheme/endeavour_theme.dart';

class Headline2Text extends Text {
  Headline2Text({Key? key, required String text, required Color color})
      : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          style: endeavourTheme.textTheme.headline2!.copyWith(
            color: color,
            fontWeight: endeavourTheme.textTheme.headline2!.fontWeight,
            fontSize: endeavourTheme.textTheme.headline2!.fontSize,
            fontStyle: endeavourTheme.textTheme.headline2!.fontStyle,
          ),
        );
}
