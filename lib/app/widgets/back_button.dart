import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      InkWell(
        onTap: ()=> Get.back(),
        child: Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(ImageAsset.backArrowIcon))
          ),
        ),
      )
    ],);
  }
}