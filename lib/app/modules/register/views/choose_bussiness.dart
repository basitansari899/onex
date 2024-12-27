import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/modules/register/views/what_you_need.dart';
import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/already_account.dart';
import 'package:onex/app/widgets/back_button.dart';
import 'package:onex/app/widgets/button.dart';
import 'package:onex/app/widgets/register_card_selection.dart';

class ChooseBussiness extends GetView {
  const ChooseBussiness({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButtonWidget(),
              gapH12,
              Center(
                child: Container(
                  width: 124,
                  height: 94,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(ImageAsset.splashImage),
                    ),
                  ),
                ),
              ),
              gapH32,
              Center(
                child: Text('Choose Business Type',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        )),
              ),
              gapH12,
              Center(
                child: Text(
                  'Choose one of below to proceed',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
              gapH32,
              CustomSelectableCard(
                title: 'Individual',
                subtitle: 'Looking for a service myself',
                imagePath: ImageAsset.explorerImage,
                isSelected: true,
                onTap: () {
                  print('Individual selected');
                },
              ),
              gapH20,
              CustomSelectableCard(
                title: 'Business',
                subtitle: 'Looking for my company',
                imagePath: ImageAsset.talentedImage,
                isSelected: false,
                onTap: () {
                  print('Company selected');
                },
              ),
              gapH32,
              CustomButton(
                  width: Get.width,
                  textColor: AppColors.white,
                  title: StringConstant.next,
                  onPress: () => Get.to(ExploreServices())),
              gapH24,
              AlreadyHaveAccount(
                onLoginTap: () => Get.offAllNamed(Routes.LOGIN),
              ),
            ],
          ).paddingSymmetric(vertical: 16, horizontal: 16),
        ),
      ),
    );
  }
}
