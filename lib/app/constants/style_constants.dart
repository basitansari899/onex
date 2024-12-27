import 'package:flutter/material.dart';

class StyleConstants {
  static var containerShadow = BoxShadow(
    color: Colors.black.withValues(alpha: 0.1),
    spreadRadius: 2,
    blurRadius: 15,
    offset: const Offset(0, 0), // changes position of shadow
  );
}
