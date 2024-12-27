import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/modules/home/views/widgets/search_result_freelancer_card.dart';
import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/custom_app_bar.dart';
import 'package:onex/app/widgets/search_text_field.dart';

import '../controllers/category_result_controller.dart';

class CategoryResultView extends GetView<CategoryResultController> {
  const CategoryResultView({super.key});
  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;
    return Scaffold(
        backgroundColor: AppColors.appbarAndBodyColor,
        appBar: CustomAppbar(
          text: text,
          title: "Graphic Design",
          actions: [
            Image.asset(height: 24, width: 24, ImageAsset.bell)
                .paddingOnly(right: Sizes.p12)
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH12,
              SearchTextField(
                searchHint: StringConstant.searchHere,
              ),
              gapH12,
              GridView.builder(
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
          ).paddingSymmetric(horizontal: Sizes.appHorizontalPadding),
        )));
  }
}
