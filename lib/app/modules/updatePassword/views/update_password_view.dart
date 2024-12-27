import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/back_button.dart';
import 'package:onex/app/widgets/button.dart';
import 'package:onex/app/widgets/custom_textfield.dart';
import 'package:onex/app/widgets/success_popup.dart';

import '../controllers/update_password_controller.dart';

class UpdatePasswordView extends GetView<UpdatePasswordController> {
  const UpdatePasswordView({super.key});
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
              BackButtonWidget(),
              gapH16,
              Center(
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(ImageAsset.updateImage),
                    ),
                  ),
                ),
              ),
              gapH24,
              Center(
                child: Text(StringConstant.updatePassTitle,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: AppColors.black),
                        textAlign: TextAlign.center),
              ),
              gapH4,
              Center(
                child: Text(
                  StringConstant.updatePassDetail,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
                  textAlign: TextAlign.center,
                ).paddingSymmetric(horizontal: 50),
              ),
              gapH40,
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 54,
                      child: CustomTextField(
                        prefix: Image.asset(ImageAsset.lockIcon,
                                height: 24, width: 24)
                            .paddingSymmetric(horizontal: 16),
                        hint: "Enter New Password",
                        fieldData: controller.password,
                      ),
                    ),
                    gapH12,
                    SizedBox(
                      height: 54,
                      child: CustomTextField(
                        prefix: Image.asset(ImageAsset.lockIcon,
                                height: 24, width: 24)
                            .paddingSymmetric(horizontal: 16),
                        hint: "Confirm New Password",
                        fieldData: controller.password,
                      ),
                    ),
                  ],
                ),
              ),
              gapH24,
              CustomButton(
                  width: Get.width,
                  textColor: AppColors.white,
                  title: StringConstant.updatePassword,
                  onPress: () {
                    showCustomPopup(
      context: context,
      imagePath: ImageAsset.tickCircleIcon, // Path to your asset image
      title: 'Successful!',
      description: 'Your Password was updated successfully.',
      buttonText: StringConstant.ok,
      onButtonPressed: () => Get.offAllNamed(Routes.LOGIN),
    );
                  }),
            ],
          ).paddingSymmetric(vertical: 16, horizontal: 16),
        ),
      ),
    );
  }
}
