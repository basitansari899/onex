import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/button.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: Get.width,
            height: 380,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(ImageAsset.onboarding),
                    ),),
          ),
          gapH48,
          gapH8,
          Text(StringConstant.welcome,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(fontWeight: FontWeight.w900, fontSize: 24)),
                  gapH24,
                   Text(StringConstant.welcomeDetail,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
                  textAlign: TextAlign.center,).paddingSymmetric(horizontal: 50),
                  Spacer(),
              CustomButton(
                width: Get.width,
                textColor: AppColors.black,
                title: StringConstant.login, onPress: (){
                  Get.toNamed(Routes.LOGIN);
                }).paddingSymmetric(horizontal: 16),
              gapH24,
              CustomButton(
                width: Get.width,
                textColor: AppColors.white,
                buttonColor: AppColors.secondary,
                title: StringConstant.signUp, onPress: (){Get.toNamed(Routes.REGISTER);}).paddingOnly(bottom: 60,left: 16,right: 16),

        ],
      ),
    );
  }
}
