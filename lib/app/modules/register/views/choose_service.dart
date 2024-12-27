import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/modules/register/controllers/register_controller.dart';

import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/back_button.dart';
import 'package:onex/app/widgets/button.dart';
import 'package:onex/app/widgets/custom_dropdown.dart';
import 'package:onex/app/widgets/custom_textfield.dart';

class ChooseService extends GetView<RegisterController> {
  const ChooseService({super.key});
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
                child: Text('Choose Your Service',
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
                    Text('Service Title',
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
                    Text('Description',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontSize: 14)),
                    gapH8,
                    CustomTextField(
                      maxLines: 4,
                      hint: "Write here..",
                      fieldData: controller.seriviceDescription,
                    ),
                    gapH8,
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Spacer(),
                          Text("AI generate",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      fontSize: 12,
                                      decoration: TextDecoration.underline)),
                        ],
                      ),
                    ),
                    gapH16,
                    Text('Category',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontSize: 14)),
                    gapH8,
                    Row(
                      children: [
                        Expanded(
                          child: TransparentDropDown(
                              label: "Select Category",
                              onchanged: (v) {},
                              list: ["1", "2", "3"],
                              hint: "Hint"),
                        ),
                        gapW12,
                        Expanded(
                          child: TransparentDropDown(
                              label: "Select Sub Category",
                              onchanged: (v) {},
                              list: ["1", "2", "3"],
                              hint: "Hint"),
                        ),
                      ],
                    ),
                    gapH16,
                    Text('Search Tags',
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
                    Text(
                        'Input the search terms your buyers are likely to use when seeking your services. Help them find you easily by optimizing your offerings with relevant keywords!',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontSize: 10, fontWeight: FontWeight.w400)),
                    gapH16,
                    Text('Upload Service Images',
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
                              image: AssetImage(ImageAsset.uploadImage))),
                    ),
                    gapH16,
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
                  onPress: () => Get.toNamed(Routes.PACKAGES_META_DATA)),
            ],
          ).paddingSymmetric(vertical: 16, horizontal: 16),
        ),
      ),
    );
  }
}
