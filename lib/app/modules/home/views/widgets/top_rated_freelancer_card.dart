import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/style_constants.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/heading.dart';

import '../../../../constants/app_sizes.dart';

class TopRatedFreelancersCard extends StatelessWidget {
  final String? image;
  final String? name;
  final String? service;
  final String? projects;
  const TopRatedFreelancersCard({
    super.key,
    required this.image,
    required this.name,
    required this.projects,
    required this.service,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [StyleConstants.containerShadow],
          borderRadius: BorderRadius.circular(Sizes.p12)),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Sizes.p12),
                  topLeft: Radius.circular(Sizes.p12)),
              child: Stack(
                children: [
                  Image.asset(
                    height: 92,
                    width: double.infinity,
                    image!,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(Sizes.p4),
                      child: RatingContainerWithStar(
                        text: text,
                        rating: "4.4",
                      ),
                    ),
                  )
                ],
              )),
          gapH4,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Heading(
                text: text,
                title: name ?? "",
              ),
              Text(service ?? "",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: text.titleSmall?.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: AppColors.grayText)),
              Text(projects ?? "",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: text.titleSmall?.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  )),
            ],
          ).paddingAll(Sizes.p6)
        ],
      ),
    );
  }
}

class RatingContainerWithStar extends StatelessWidget {
  final String? rating;
  const RatingContainerWithStar({
    super.key,
    required this.rating,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Sizes.p2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.p4),
          color: AppColors.white.withValues(alpha: 0.8)),
      child: Row(
        children: [
          Text(rating!,
              style: text.titleSmall
                  ?.copyWith(fontWeight: FontWeight.normal, fontSize: 10)),
          Image.asset(height: 9, ImageAsset.star)
        ],
      ),
    );
  }
}
