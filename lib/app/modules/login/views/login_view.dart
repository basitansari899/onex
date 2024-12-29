import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/button.dart';
import 'package:onex/app/widgets/custom_textfield.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH24,
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
              gapH24,
              Center(
                child: Text(StringConstant.login,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                        color: AppColors.primary)),
              ),
              gapH24,
              Text(
                StringConstant.loginDetail,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
                textAlign: TextAlign.center,
              ).paddingSymmetric(horizontal: 50),
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontSize: 14)),
                    gapH8,
                    SizedBox(
                      height: 54,
                      child: CustomTextField(
                        prefix: Image.asset(ImageAsset.emailIcon,
                                height: 24, width: 24)
                            .paddingSymmetric(horizontal: 16),
                        hint: "Enter your email address",
                        fieldData: controller.email,
                      ),
                    ),
                    gapH16,
                    Text('Password',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontSize: 14)),
                    gapH8,
                    CustomTextField(
                      prefix: Image.asset(ImageAsset.lockIcon,
                              height: 24, width: 24)
                          .paddingSymmetric(horizontal: 16),
                      hint: "Enter your password",
                      fieldData: controller.password,
                      textInputAction: TextInputAction.done,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () => Get.toNamed(Routes.FORGET_PASSWORD),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontSize: 14,
                          color: AppColors.purpleB69BED,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.purpleB69BED),
                    ),
                  ],
                ).paddingOnly(top: 12),
              ),
              gapH32,
              CustomButton(
                  width: Get.width,
                  textColor: AppColors.white,
                  title: StringConstant.login,
                  onPress: () => Get.toNamed(Routes.LANDING_VIEW)),
              Row(
                children: [
                  Expanded(child: Image.asset(ImageAsset.line)),
                  Text(
                    StringConstant.or,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
                    textAlign: TextAlign.center,
                  ).paddingSymmetric(horizontal: 16),
                  Expanded(child: Image.asset(ImageAsset.line)),
                ],
              ).paddingSymmetric(vertical: 24),
              CustomButton(
                  width: Get.width,
                  textColor: AppColors.white,
                  buttonColor: AppColors.secondary,
                  title: StringConstant.signUp,
                  onPress: () => Get.toNamed(Routes.REGISTER)),
            ],
          ).paddingSymmetric(vertical: 16, horizontal: 16),
        ),
      ),
    );
  }
}
