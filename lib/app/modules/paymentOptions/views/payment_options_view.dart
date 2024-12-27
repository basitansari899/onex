import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/constants/style_constants.dart';
import 'package:onex/app/modules/paymentOptions/views/widgets/bottom_sheet.dart';
import 'package:onex/app/routes/app_pages.dart';

import 'package:onex/app/theme/colors.dart';

import 'package:onex/app/widgets/custom_app_bar.dart';

import '../controllers/payment_options_controller.dart';

class PaymentOptionsView extends GetView<PaymentOptionsController> {
  const PaymentOptionsView({super.key});
  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.appbarAndBodyColor,
      bottomSheet: PaymentOptionBottomSheet(
        text: text,
        tax: "0.8",
        total: "75.90",
        onPress: () {
          Get.toNamed(Routes.ADD_PAYMENT_CARD);
        },
      ),
      appBar: CustomAppbar(text: text, title: "Payment Options"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH20,
              Row(
                children: [
                  Image.asset(ImageAsset.diamond, height: 50),
                  gapW8,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Standard",
                        style: text.bodySmall?.copyWith(
                            color: AppColors.purpleB69BED, fontSize: Sizes.p10),
                      ),
                      Text(
                        "\$75 for 5 screens",
                        style: text.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500, fontSize: Sizes.p20),
                      ),
                    ],
                  )
                ],
              ),
              gapH12,
              Divider(),
              gapH12,
              Container(
                padding: EdgeInsets.all(Sizes.p12),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    boxShadow: [StyleConstants.containerShadow],
                    borderRadius: BorderRadius.circular(Sizes.p8),
                    border: Border.all(color: AppColors.primary)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          StringConstant.creditOrDebit,
                          style: text.bodySmall?.copyWith(
                              fontWeight: FontWeight.w500, fontSize: Sizes.p16),
                        ),
                        Spacer(),
                        Image.asset(height: 24, ImageAsset.roundedCheck)
                      ],
                    ),
                    gapH12,
                    Text(
                      "Use a credit or debit card to pay",
                      style: text.bodySmall?.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.black.withAlpha(102),
                          fontSize: Sizes.p12),
                    ),
                  ],
                ),
              ),
              gapH12,
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(Sizes.p12),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  boxShadow: [StyleConstants.containerShadow],
                  borderRadius: BorderRadius.circular(Sizes.p8),
                ),
                child: Text(
                  "Paypal",
                  style: text.bodySmall?.copyWith(
                      fontWeight: FontWeight.w500, fontSize: Sizes.p16),
                ),
              ),
            ],
          ).paddingSymmetric(horizontal: Sizes.appHorizontalPadding),
        ),
      ),
    );
  }
}
