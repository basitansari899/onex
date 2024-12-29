import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/modules/home/views/widgets/home_freelancer_card.dart';
import 'package:onex/app/modules/home/views/widgets/search_result_freelancer_card.dart';
import 'package:onex/app/modules/home/views/widgets/services_horizontal_list.dart';
import 'package:onex/app/modules/home/views/widgets/top_rated_freelancers_list.dart';
import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/heading.dart';
import 'package:onex/app/widgets/home_appbar.dart';
import 'package:onex/app/widgets/search_text_field.dart';
import 'package:onex/app/widgets/view_all_button.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: HomeAppbar(
          userName: "Lili Coco",
          profilePic: ImageAsset.profilePicture,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH12,
              SearchTextField(),
              gapH12,
              TopRatedFreelancers(text: text),
              gapH12,
              ServicesHorizontalList(),
              gapH12,
              Row(
                children: [
                  Heading(text: text, title: "UI UX Design"),
                  Spacer(),
                  ViewAllButton(
                    text: text,
                    onTap: () {},
                  )
                ],
              ),
              gapH12,
              Row(
                children: [
                  Expanded(
                    child: SearchResultFreelancerCard(
                      avatarRadius: 14,
                      text: text,
                      onTapCard: () {
                        Get.toNamed(Routes.FREELANCER_DETAIL);
                      },
                      banner: ImageAsset.guitar1,
                      rating: "4.4",
                      isLiked: false,
                      name: "Ayan Khan",
                      level: "Level 2 Seller",
                      price: 15,
                      description:
                          "Do mobile app UI UX design, website or dashboard UI UX d..Do mobile app UI UX design, website or dashboard UI UX d..",
                    ),
                  ),
                  gapW12,
                  Expanded(
                    child: SearchResultFreelancerCard(
                      avatarRadius: 14,
                      text: text,
                      onTapCard: () {
                        Get.toNamed(Routes.FREELANCER_DETAIL);
                      },
                      banner: ImageAsset.guitar1,
                      rating: "4.4",
                      isLiked: false,
                      name: "Ayan Khan",
                      level: "Level 2 Seller",
                      price: 15,
                      description:
                          "Do mobile app UI UX design, website or dashboard UI UX d..Do mobile app UI UX design, website or dashboard UI UX d..",
                    ),
                  ),
                ],
              ),
              gapH12,
              HomeFreelancerCard(
                text: text,
                profileImage: ImageAsset.profilePicture,
                name: "Darell Stwerd",
                service: "Learn to play guitar in 3 days",
                categories: ["Music", "Guitar", "Hobby"],
                banner1: ImageAsset.guitar1,
                banner2: ImageAsset.guitar2,
              ),
              gapH12,
              HomeFreelancerCard(
                text: text,
                profileImage: ImageAsset.profile2,
                name: "Jenny Wislon",
                service: "Crafting visual experience for modern brands.",
                categories: [
                  "Brand Designer",
                  "Web Designer",
                  "Content creator"
                ],
                banner1: ImageAsset.guitar1,
                banner2: ImageAsset.guitar2,
              ),
              
            ],
          ).paddingSymmetric(horizontal: Sizes.appHorizontalPadding),
        )));
  }
}
