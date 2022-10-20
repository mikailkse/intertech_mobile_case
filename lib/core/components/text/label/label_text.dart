import 'package:flutter/material.dart';

class LabelText extends Text {
  LabelText(
      {Key? key,
      required String text,
      required Color color,
      int? maxLines,
      TextAlign? textAlign})
      : super(
          key: key,
          text,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1,
          maxLines: maxLines,
          textAlign: textAlign,
          style: TextStyle(
            color: color,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        );
}
