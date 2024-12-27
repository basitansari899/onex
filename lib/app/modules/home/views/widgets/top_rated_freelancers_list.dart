import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/modules/home/views/widgets/top_rated_freelancer_card.dart';
import 'package:onex/app/modules/home/views/widgets/top_rated_view_all.dart';

class TopRatedFreelancers extends StatelessWidget {
  const TopRatedFreelancers({
    super.key,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopRatedHeadingWithViewAllButton(text: text),
        gapH12,
        SizedBox(
          height: 168,
          child: ListView.builder(
              clipBehavior: Clip.none,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return TopRatedFreelancersCard(
                  text: text,
                  image: ImageAsset.freelancer,
                  name: "Jane Cooper",
                  service: "DIY Home Master",
                  projects: "200+ Projects",
                ).paddingOnly(right: Sizes.p12);
              }),
        ),
      ],
    );
  }
}
