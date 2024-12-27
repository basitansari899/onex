import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/style_constants.dart';
import 'package:onex/app/modules/home/views/widgets/profile_pic_title_subtitle.dart';
import 'package:onex/app/modules/home/views/widgets/top_rated_freelancer_card.dart';
import 'package:onex/app/theme/colors.dart';

class SearchResultFreelancerCard extends StatelessWidget {
  final String? banner;
  final String? rating;
  final String? name;
  final String? level;
  final double? price;
  final String? description;
  final bool isLiked;
  final double? avatarRadius;
  final void Function()? onTapCard;
  final double? titleSize;
  final double? subtitleSize;
  const SearchResultFreelancerCard(
      {super.key,
      required this.text,
      required this.banner,
      required this.description,
      required this.isLiked,
      required this.level,
      required this.name,
      required this.price,
      required this.rating,
      this.avatarRadius,
      required this.onTapCard,
      this.titleSize,
      this.subtitleSize});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapCard,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.p8),
          color: AppColors.white,
          boxShadow: [StyleConstants.containerShadow],
        ),
        padding: EdgeInsets.all(Sizes.p8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.bottomLeft,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.p8),
                  image: DecorationImage(
                    image: AssetImage(banner!),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Row(
                  children: [
                    RatingContainerWithStar(rating: rating, text: text),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(Sizes.p4),
                      height: 15,
                      decoration: BoxDecoration(
                          color: AppColors.creme,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Image.asset(height: 8, ImageAsset.heart),
                    )
                  ],
                ).paddingAll(Sizes.p8)),
            gapH12,
            Row(
              children: [
                ProfilePicWithTitleAndSubtitle(
                    titleSize: 10,
                    subtitleSize: 7,
                    avatarRadius: avatarRadius,
                    profileImage: ImageAsset.profile2,
                    name: name,
                    text: text,
                    subtitle: level),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "Price ",
                      style: text.bodySmall?.copyWith(
                          fontSize: Sizes.p10,
                          color: AppColors.black.withValues(alpha: 0.7)),
                    ),
                    Text("\$$price",
                        style: text.bodySmall?.copyWith(
                            fontSize: Sizes.p8, color: AppColors.black))
                  ],
                )
              ],
            ),
            gapH12,
            Text(description ?? "",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: text.bodySmall?.copyWith(
                    fontSize: Sizes.p10,
                    color: AppColors.black.withValues(alpha: 0.9)))
          ],
        ),
      ),
    );
  }
}
