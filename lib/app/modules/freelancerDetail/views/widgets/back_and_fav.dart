import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/widgets/rounded_icon_button.dart';

class BackAndFavButton extends StatelessWidget {
  const BackAndFavButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      children: [
        RoundedIconButton(
          height: 40,
          onTap: () => Get.back(),
          icon: ImageAsset.backArrowWhite,
        ),
        Spacer(),
        RoundedIconButton(
          height: 40,
          icon: ImageAsset.heartWhite,
        ),
      ],
    ).paddingSymmetric(horizontal: Sizes.appHorizontalPadding));
  }
}
