import 'package:flutter/material.dart';

class ImageBackgroundContainer extends Container {
  ImageBackgroundContainer({Key? key, required Widget child})
      : super(
          key: key,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/login-background.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: child,
        );
}
