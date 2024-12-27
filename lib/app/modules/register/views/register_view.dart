import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/modules/register/views/join_as_view.dart';
import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/already_account.dart';
import 'package:onex/app/widgets/button.dart';
import 'package:onex/app/widgets/custom_textfield.dart';
import 'package:onex/app/widgets/termsAndCondition.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              gapH12,
              Center(
                child: Text(StringConstant.register,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                        color: AppColors.primary)),
              ),
              gapH12,
              Center(
                child: Text(
                  StringConstant.registerDetail,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
              gapH12,
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 54,
                      child: CustomTextField(
                        prefix: Image.asset(ImageAsset.userIcon,
                                height: 24, width: 24)
                            .paddingSymmetric(horizontal: 16),
                        hint: "Enter your email address",
                        fieldData: controller.firstName,
                      ),
                    ),
                    gapH12,
                    SizedBox(
                      height: 54,
                      child: CustomTextField(
                        prefix: Image.asset(ImageAsset.userIcon,
                                height: 24, width: 24)
                            .paddingSymmetric(horizontal: 16),
                        hint: "Enter your email address",
                        fieldData: controller.lastName,
                      ),
                    ),
                    gapH12,
                    SizedBox(
                      height: 54,
                      child: CustomTextField(
                        prefix: Image.asset(ImageAsset.callIcon,
                                height: 24, width: 24)
                            .paddingSymmetric(horizontal: 16),
                        hint: "Enter your email address",
                        fieldData: controller.phone,
                      ),
                    ),
                    gapH12,
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
                    gapH12,
                    CustomTextField(
                      prefix: Image.asset(ImageAsset.lockIcon,
                              height: 24, width: 24)
                          .paddingSymmetric(horizontal: 16),
                      hint: "Enter your password",
                      fieldData: controller.password,
                      textInputAction: TextInputAction.done,
                    ),
                    gapH12,
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
              TermsCheckbox(),
              gapH24,
              CustomButton(
                  width: Get.width,
                  textColor: AppColors.white,
                  title: StringConstant.next,
                  onPress: ()=> Get.to(JoinAsView())),
              gapH24,
              AlreadyHaveAccount(onLoginTap: ()=>Get.offAllNamed(Routes.LOGIN),),
            ],
          ).paddingSymmetric(vertical: 16, horizontal: 16),
        ),
      ),
    );
  }
}
