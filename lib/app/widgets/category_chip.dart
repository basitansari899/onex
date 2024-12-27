import 'package:flutter/material.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/style_constants.dart';
import 'package:onex/app/theme/colors.dart';

class CategoryChip extends StatelessWidget {
  final String? text;
  final Color? color;
  final Color? textColor;
  final bool isSelected;
  const CategoryChip(
      {super.key,
      this.color,
      this.text,
      this.textColor,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      decoration: BoxDecoration(
          boxShadow: [StyleConstants.containerShadow],
          color: isSelected ? AppColors.purpleB69BED : AppColors.white,
          borderRadius: BorderRadius.circular(Sizes.p40)),
      padding: EdgeInsets.symmetric(horizontal: Sizes.p12, vertical: Sizes.p4),
      child: Text(
        text ?? "",
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontSize: Sizes.p14,
            fontWeight: FontWeight.w500,
            color: isSelected
                ? AppColors.white
                : Color(0xff131313).withValues(alpha: 0.6)),
      ),
    );
  }
}
