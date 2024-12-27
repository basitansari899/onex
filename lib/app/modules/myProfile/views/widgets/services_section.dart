import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/modules/home/views/widgets/search_result_freelancer_card.dart';
import 'package:onex/app/routes/app_pages.dart';

class MyProfileServicesSection extends StatelessWidget {
  const MyProfileServicesSection({
    super.key,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Services",
          style: text.headlineLarge
              ?.copyWith(fontSize: Sizes.p18, fontWeight: FontWeight.bold),
        ),
        gapH12,
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: Sizes.p12,
              crossAxisSpacing: Sizes.p12,
              crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return SearchResultFreelancerCard(
                avatarRadius: 13,
                text: text,
                banner: ImageAsset.guitar2,
                description:
                    "Do mobile app UI UX design, website or dashboard UI UX d..",
                isLiked: false,
                level: "Level 2 Seller",
                name: "Ayan khan",
                price: 15,
                rating: "4.4",
                onTapCard: () {
                  Get.toNamed(Routes.FREELANCER_DETAIL);
                });
          },
        ),
      ],
    );
  }
}
