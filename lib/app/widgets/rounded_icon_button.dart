import 'package:flutter/material.dart';
import 'package:onex/app/theme/colors.dart';

class RoundedIconButton extends StatelessWidget {
  final String? icon;
  final Color? color;
  final void Function()? onTap;
  final double? height;

  const RoundedIconButton(
      {super.key, this.color, this.height, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: AppColors.black.withValues(alpha: 0.25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(icon!),
        ),
      ),
    );
  }
}
