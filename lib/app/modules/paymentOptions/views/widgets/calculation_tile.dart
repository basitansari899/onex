import 'package:flutter/material.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/theme/colors.dart';

class CalculationTile extends StatelessWidget {
  final String? title;
  final String? value;
  const CalculationTile(
      {super.key, required this.text, this.title, this.value});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title!,
          style: text.bodySmall?.copyWith(
              color: AppColors.grayText,
              fontWeight: FontWeight.w500,
              fontSize: Sizes.p16),
        ),
        Spacer(),
        Text(
          "\$$value",
          style: text.bodySmall
              ?.copyWith(fontWeight: FontWeight.w600, fontSize: Sizes.p20),
        )
      ],
    );
  }
}
