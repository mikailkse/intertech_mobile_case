import 'package:flutter/material.dart';

class BlackContainer extends Container {
  BlackContainer({
    required Widget child,
    Key? key,
  }) : super(
          key: key,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                spreadRadius: 0,
                blurRadius: 10,
              )
            ],
          ),
          child: child,
        );
}
