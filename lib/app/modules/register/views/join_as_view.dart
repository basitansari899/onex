import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/modules/register/views/choose_bussiness.dart';
import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/already_account.dart';
import 'package:onex/app/widgets/back_button.dart';
import 'package:onex/app/widgets/button.dart';
import 'package:onex/app/widgets/custom_textfield.dart';
import 'package:onex/app/widgets/register_card_selection.dart';
import 'package:onex/app/widgets/termsAndCondition.dart';

class JoinAsView extends GetView {
  const JoinAsView({super.key});
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
                child: Text('Join as a Explorer or Talanted',
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
                title: 'I am a  Explorer',
                subtitle: 'Looking to upscale my talants',
                imagePath: ImageAsset.explorerImage,
                isSelected: true,
                onTap: () {
                  print('Individual selected');
                },
              ),
              gapH20,
              CustomSelectableCard(
                title: 'I am a Talented ',
                subtitle: 'Want to showcase my talent and earn',
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
                  onPress: ()=> Get.to(ChooseBussiness())),
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
