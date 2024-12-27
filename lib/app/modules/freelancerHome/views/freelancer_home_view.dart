import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/constants/style_constants.dart';
import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/home_appbar.dart';
import 'package:onex/app/widgets/search_text_field.dart';

import '../controllers/freelancer_home_controller.dart';

class FreelancerHomeView extends GetView<FreelancerHomeController> {
  const FreelancerHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: HomeAppbar(
          userName: "Ayan kahn",
          profilePic: ImageAsset.profilePicture,
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
                  return GestureDetector(
                    onTap: () => Get.toNamed(Routes.CATEGORY_RESULT),
                    child: Container(
                      padding: EdgeInsets.all(Sizes.p12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Sizes.p8),
                          boxShadow: [StyleConstants.containerShadow],
                          color: AppColors.white),
                      child: Column(
                        children: [
                          Image.asset(height: 50, ImageAsset.penTool),
                          gapH12,
                          Text(
                            "Graphic Design",
                            style: text.bodySmall?.copyWith(
                              fontSize: Sizes.p12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          gapH12,
                          Text(
                            "Lorem ipsum dollar sit, Lorem ipsum dollar sit, Lorem ipsum dollar sit, ",
                            textAlign: TextAlign.center,
                            style: text.bodySmall?.copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black.withValues(alpha: 0.8)),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ).paddingSymmetric(horizontal: Sizes.appHorizontalPadding),
        )));
  }
}
