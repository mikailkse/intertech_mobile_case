import 'package:flutter/material.dart';

import '../../../init/theme/lightTheme/endeavour_theme.dart';

class Headline6Text extends Text {
  Headline6Text({Key? key, required String text, required Color color})
      : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          style: endeavourTheme.textTheme.headline6!.copyWith(
            color: color,
            fontWeight: endeavourTheme.textTheme.headline6!.fontWeight,
            fontSize: endeavourTheme.textTheme.headline6!.fontSize,
            fontStyle: endeavourTheme.textTheme.headline6!.fontStyle,
          ),
        );
}
