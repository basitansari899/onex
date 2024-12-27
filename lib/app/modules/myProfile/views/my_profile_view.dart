import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/modules/myProfile/views/widgets/middle_section.dart';
import 'package:onex/app/modules/myProfile/views/widgets/reviews_section.dart';
import 'package:onex/app/modules/myProfile/views/widgets/services_section.dart';
import 'package:onex/app/modules/myProfile/views/widgets/upper_section.dart';

import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/custom_app_bar.dart';

import '../controllers/my_profile_controller.dart';

class MyProfileView extends GetView<MyProfileController> {
  const MyProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.appbarAndBodyColor,
      appBar: CustomAppbar(text: text, title: StringConstant.myProfile),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              gapH12,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 83,
                  ),
                  MyProfileUpperSection(text: text),
                  SizedBox(height: 16),
                  MyProfileMiddleSection(text: text),
                  SizedBox(height: 16),
                  MyProfileReviewsSection(text: text),
                  gapH12,
                  MyProfileServicesSection(text: text)
                ],
              ),
            ],
          ).paddingSymmetric(horizontal: Sizes.appHorizontalPadding),
        ),
      ),
    );
  }
}
