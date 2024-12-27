import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/cached_image_viewer.dart';

class FavCard extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subTitle;
  final bool isFav;
  const FavCard({
    super.key,
    required this.image,
    required this.isFav,
    required this.subTitle,
    required this.title,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
                height: 75,
                width: 70,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Sizes.p6),
                  child: CachedImageViewer(
                    url: image,
                  ),
                )),
            gapW12,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? "",
                  style: text.headlineLarge?.copyWith(
                      fontSize: Sizes.p16, fontWeight: FontWeight.bold),
                ),
                gapH8,
                Text(
                  subTitle ?? "",
                  style: text.headlineLarge?.copyWith(
                      fontSize: Sizes.p14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black.withValues(alpha: 0.6)),
                ),
              ],
            ),
            Spacer(),
            Image.asset(height: 24, ImageAsset.favs),
          ],
        ),
        gapH12,
        Divider(),
      ],
    ).paddingSymmetric(vertical: Sizes.p6);
  }
}
