import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/modules/addPaymentCard/views/widgets/textfield_with_labels.dart';
import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/button.dart';
import 'package:onex/app/widgets/custom_app_bar.dart';
import 'package:onex/app/widgets/success_popup.dart';
import '../controllers/add_payment_card_controller.dart';

class AddPaymentCardView extends GetView<AddPaymentCardController> {
  const AddPaymentCardView({super.key});
  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.appbarAndBodyColor,
      appBar: CustomAppbar(text: text, title: "Credit/Debit Card"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH12,
              TextFieldWithLabel(
                text: text,
                label: StringConstant.cardNumber,
                hint: "1234  * * * *  * * * *  6789",
                showPrefix: true,
              ),
              gapH12,
              gapH12,
              TextFieldWithLabel(
                text: text,
                label: StringConstant.cardHolderName,
                hint: "Ayan",
              ),
              gapH12,
              gapH12,
              Row(
                children: [
                  Expanded(
                    child: TextFieldWithLabel(
                      text: text,
                      label: StringConstant.validUntil,
                      hint: "12/25",
                    ),
                  ),
                  gapW48,
                  Expanded(
                    child: TextFieldWithLabel(
                      text: text,
                      label: StringConstant.cvv,
                      hint: "123",
                    ),
                  ),
                ],
              ),
              gapH32,
              CustomButton(
                textColor: AppColors.white,
                width: Get.width,
                title: StringConstant.makePayment,
                onPress: () {
                  showCustomPopup(
                      context: context,
                      imagePath:
                          ImageAsset.tickCircleIcon, // Path to your asset image
                      title: 'Successful!',
                      description: StringConstant.orderPlacedSuccess,
                      buttonText: StringConstant.ok,
                      onButtonPressed: () {
                        Get.back();
                        Get.toNamed(Routes.FREELANCER_HOME);
                      });
                },
              ),
            ],
          ).paddingSymmetric(horizontal: Sizes.appHorizontalPadding),
        ),
      ),
    );
  }
}
