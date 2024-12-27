import 'package:flutter/material.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/theme/colors.dart';

class ProfilePicWithTitleAndSubtitle extends StatelessWidget {
  const ProfilePicWithTitleAndSubtitle(
      {super.key,
      required this.profileImage,
      required this.name,
      required this.text,
      required this.subtitle,
      this.avatarRadius,
      this.isNameBold = false,
      this.titleSize,
      this.subtitleSize});

  final String? profileImage;
  final String? name;
  final TextTheme text;
  final bool isNameBold;
  final String? subtitle;
  final double? avatarRadius;
  final double? titleSize;
  final double? subtitleSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: avatarRadius ?? 30,
          backgroundImage: AssetImage(profileImage!),
        ),
        gapW12,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name ?? "",
              style: text.headlineSmall?.copyWith(
                  fontSize: titleSize ?? 17,
                  fontWeight: isNameBold ? FontWeight.bold : FontWeight.normal),
            ),
            Text(subtitle ?? "",
                style: text.titleSmall?.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: subtitleSize ?? 12,
                    color: AppColors.grayText))
          ],
        ),
      ],
    );
  }
}
