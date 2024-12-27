import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/modules/register/views/set_packages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/back_button.dart';
import 'package:onex/app/widgets/button.dart';
import 'package:onex/app/widgets/custom_textfield.dart';

import '../controllers/packages_meta_data_controller.dart';

class PackagesMetaDataView extends GetView<PackagesMetaDataController> {
  const PackagesMetaDataView({super.key});
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
              gapH24,
              Center(
                child: Text('Name Your Package',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: AppColors.black)),
              ),
              gapH24,
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Title',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontSize: 14)),
                    gapH8,
                    SizedBox(
                      height: 54,
                      child: CustomTextField(
                        hint: "Write here..",
                        fieldData: controller.seriviceTitle,
                      ),
                    ),
                    gapH16,
                    Text('Package Title',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontSize: 14)),
                    gapH8,
                    CustomTextField(
                      hint: "Write here..",
                      fieldData: controller.packageTitle,
                    ),
                    gapH8,
                    Text('Upload Service Video',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontSize: 14)),
                    gapH8,
                    Container(
                      width: Get.width,
                      height: 166,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageAsset.uploadVideo))),
                    ),
                  ],
                ),
              ),
              gapH24,
              CustomButton(
                  width: Get.width,
                  textColor: AppColors.white,
                  title: StringConstant.next,
                  onPress: () => Get.to(PackagePricingTable())),
            ],
          ).paddingSymmetric(vertical: 16, horizontal: 16),
        ),
      ),
    );
  }
}
