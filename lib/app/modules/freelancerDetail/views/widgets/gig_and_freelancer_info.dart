import 'package:flutter/material.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/modules/home/views/widgets/profile_pic_title_subtitle.dart';
import 'package:onex/app/theme/colors.dart';

class GigAndFreelancerInfo extends StatelessWidget {
  final String? service;
  final String? serviceDesc;
  final String? name;
  final String? level;
  final String? rating;
  final String? totalOrders;
  final String? location;

  const GigAndFreelancerInfo(
      {super.key,
      required this.text,
      required this.level,
      required this.location,
      required this.name,
      required this.rating,
      required this.service,
      required this.serviceDesc,
      required this.totalOrders});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          service ?? "",
          style: text.bodyMedium
              ?.copyWith(fontSize: Sizes.p16, fontWeight: FontWeight.w600),
        ),
        gapH8,
        Text(
          serviceDesc ?? "",
          style: text.bodyMedium?.copyWith(
              color: AppColors.black.withValues(alpha: 0.8),
              fontSize: Sizes.p14,
              fontWeight: FontWeight.w400),
        ),
        gapH12,
        Row(
          children: [
            ProfilePicWithTitleAndSubtitle(
                profileImage: ImageAsset.profile2,
                name: name,
                text: text,
                titleSize: Sizes.p14,
                avatarRadius: 23,
                subtitle: level),
            Spacer(),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(height: 14, ImageAsset.star),
                    Text(
                      " $rating ",
                      style: text.bodyMedium?.copyWith(
                          fontSize: Sizes.p12, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "($totalOrders)",
                      style: text.bodyMedium?.copyWith(
                          color: AppColors.black.withValues(alpha: 0.6),
                          fontSize: Sizes.p12,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(height: Sizes.p14, ImageAsset.location),
                    Text(
                      " $location",
                      style: text.bodyMedium?.copyWith(
                          fontSize: Sizes.p12, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
