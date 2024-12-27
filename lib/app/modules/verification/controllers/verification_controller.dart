import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/res/validators.dart';
import 'package:onex/app/widgets/custom_textfield.dart';

class VerificationController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }

   final email = TextFieldData(
      validator: Validator.emailValidator,
      keyboardType: TextInputType.emailAddress);
}
