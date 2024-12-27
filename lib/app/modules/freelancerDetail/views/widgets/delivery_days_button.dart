import 'package:flutter/material.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/theme/colors.dart';

class SimpleButton extends StatelessWidget {
  final String? title;
  final Color? bgColor;
  final Color? textColor;
  final double? textHeight;
  final double? horizontalPadding;
  final double? verticalPadding;
  final void Function()? onTap;
  const SimpleButton(
      {super.key,
      this.bgColor,
      this.textHeight,
      this.textColor,
      this.title,
      this.horizontalPadding,
      this.verticalPadding,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? Sizes.p12,
            vertical: verticalPadding ?? Sizes.p12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.p4),
            color: bgColor ?? Colors.grey.shade200),
        child: Text(
          title ?? "",
          style: text.bodyMedium?.copyWith(
              fontSize: textHeight ?? Sizes.p8,
              color: textColor ?? AppColors.black.withValues(alpha: 0.6),
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
