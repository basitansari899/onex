import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/button.dart';

class CustomPopupDialog extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const CustomPopupDialog({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        width: 335,
        height: 290,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              imagePath,
              height: 74,
              width: 74,
              fit: BoxFit.contain,
            ),
            gapH8,
            Text(
              title,
              style: Get.textTheme.bodyMedium?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.purpleB69BED,
              ),
              textAlign: TextAlign.center,
            ),
            gapH12,
            Text(
              description,
              style: Get.textTheme.bodyMedium
                  ?.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ).paddingSymmetric(horizontal: 40),
            const Spacer(),
            CustomButton(
                width: 110,
                height: 48,
                textColor: AppColors.white,
                title: buttonText,
                onPress: onButtonPressed),
          ],
        ),
      ),
    );
  }
}

// Helper function to show the popup
void showCustomPopup({
  required BuildContext context,
  required String imagePath,
  required String title,
  required String description,
  required String buttonText,
  required VoidCallback onButtonPressed,
}) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return CustomPopupDialog(
        imagePath: imagePath,
        title: title,
        description: description,
        buttonText: buttonText,
        onButtonPressed: onButtonPressed,
      );
    },
  );
}
