import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/modules/home/views/widgets/top_rated_freelancer_card.dart';
import 'package:onex/app/modules/myProfile/views/widgets/info_tile.dart';

import 'package:onex/app/theme/colors.dart';

class MyProfileUpperSection extends StatelessWidget {
  const MyProfileUpperSection({
    super.key,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xffF7F7F7),
            borderRadius: BorderRadius.all(Radius.circular(Sizes.p8)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Sizes.p12),
            child: Column(
              children: [
                SizedBox(height: 50),
                Text("Kate Norman",
                    style: text.headlineLarge?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                Text(
                  "UX Designer • UX Researcher",
                  style: text.bodySmall?.copyWith(
                      color: AppColors.placeholderTextColor, fontSize: 10),
                ),
                gapH8,
                Divider(),
                gapH8,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoTile(
                        title: "Country",
                        value: Text(
                          "Pakistan",
                          style: text.bodyMedium?.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        )),
                    InfoTile(
                        title: "Average Response Rate",
                        value: Text(
                          "1 hour",
                          style: text.bodyMedium?.copyWith(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        )),
                    InfoTile(
                        title: "Reviews",
                        value: Row(
                          children: [
                            Text(
                              "130 / ",
                              style: text.bodyMedium?.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                            RatingContainerWithStar(rating: "4.4", text: text),
                          ],
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -83,
          child: Stack(
            alignment: Alignment.topRight,
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                radius: 63,
                backgroundImage: CachedNetworkImageProvider(ImageAsset
                    .placeholderNetworkImage), // Replace with actual image
              ),
              Positioned(
                right: 4,
                top: 20,
                child: Container(
                  height: Sizes.p12,
                  width: Sizes.p12,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.white, width: 1),
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
