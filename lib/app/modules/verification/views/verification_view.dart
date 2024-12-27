import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/back_button.dart';
import 'package:onex/app/widgets/button.dart';
import 'package:onex/app/widgets/custom_textfield.dart';

import '../controllers/verification_controller.dart';

class VerificationView extends GetView<VerificationController> {
  const VerificationView({super.key});
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
                      image: AssetImage(ImageAsset.verificationImage),
                    ),
                  ),
                ),
              ),
              gapH24,
              Center(
                child: Text(StringConstant.verificationTitle,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: AppColors.black)),
              ),
              gapH4,
              Text(
                StringConstant.verificationDetail,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
                textAlign: TextAlign.center,
              ).paddingSymmetric(horizontal: 50),
              gapH40,
              OtpTextField(
        numberOfFields: 6,
        borderColor: Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
            // showDialog(
            //     context: context,
            //     builder: (context){
            //     return AlertDialog(
            //         title: Text("Verification Code"),
            //         content: Text('Code entered is $verificationCode'),
            //     );
            //     }
            // );
        }, // end onSubmit
    ),
              gapH24,
              CustomButton(
                  width: Get.width,
                  textColor: AppColors.white,
                  title: StringConstant.confirm,
                  onPress: ()=> Get.toNamed(Routes.UPDATE_PASSWORD)),
            ],
          ).paddingSymmetric(vertical: 16, horizontal: 16),
        ),
      ),
    );
  }
}
