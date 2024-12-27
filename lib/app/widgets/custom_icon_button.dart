import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String icon;
  final void Function()? onTap;
  final double? height;
  final double? width;
  const CustomIconButton(
      {super.key,
      this.height,
      this.width,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap, child: Image.asset(height: height, width: width, icon));
  }
}
