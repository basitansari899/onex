import 'package:flutter/material.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/theme/colors.dart';

class ViewAllButton extends StatelessWidget {
  final void Function()? onTap;
  const ViewAllButton({
    super.key,
    this.onTap,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Text(StringConstant.viewAll,
              style: text.headlineSmall?.copyWith(
                  color: AppColors.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w500)),
          gapW4,
          Image.asset(height: 10, ImageAsset.arrowRightYellow)
        ],
      ),
    );
  }
}
