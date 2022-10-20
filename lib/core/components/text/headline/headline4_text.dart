import 'package:flutter/material.dart';

import '../../../init/theme/lightTheme/endeavour_theme.dart';

class Headline4Text extends Text {
  Headline4Text({Key? key, required String text, required Color color})
      : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          style: endeavourTheme.textTheme.headline4!.copyWith(
            color: color,
            fontWeight: endeavourTheme.textTheme.headline4!.fontWeight,
            fontSize: endeavourTheme.textTheme.headline4!.fontSize,
            fontStyle: endeavourTheme.textTheme.headline4!.fontStyle,
          ),
        );
}
