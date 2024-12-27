import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/modules/paymentOptions/views/widgets/calculation_tile.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/button.dart';

class PaymentOptionBottomSheet extends StatelessWidget {
  final String? tax;
  final String? total;
  final void Function()? onPress;
  const PaymentOptionBottomSheet({
    super.key,
    required this.text,
    this.tax,
    this.total,
    this.onPress,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(
            left: Sizes.p12, right: Sizes.p12, bottom: Sizes.p18),
        color: AppColors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CalculationTile(
              text: text,
              title: "Tax",
              value: "0.8",
            ),
            gapH12,
            Divider(),
            gapH12,
            CalculationTile(
              text: text,
              title: "Total",
              value: "75.75",
            ),
            gapH24,
            CustomButton(
              textColor: AppColors.white,
              width: Get.width,
              title: StringConstant.proceedToPayment,
              onPress: onPress!,
            ),
          ],
        ),
      ),
    );
  }
}
