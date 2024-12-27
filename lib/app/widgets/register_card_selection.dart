import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/theme/colors.dart';

class CustomSelectableCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomSelectableCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 64,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              height: 48,
              width: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.primary,
              ),
              child: Image.asset(imagePath).paddingOnly(left: 6,right:6 ,top: 6),
            ),
            const SizedBox(width: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                Text(subtitle,style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400, fontSize: 12),),
              ],
            ),
            const Spacer(),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: isSelected ? AppColors.primary : Colors.grey,
                  width: 3,
                ),
              ),
              child: isSelected
                  ? Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.primary,
                      ),
                    ).paddingAll(4)
                  : null,
            ).paddingOnly(right: 6),
          ],
        ).paddingAll(8),
      ),
    );
  }
}
