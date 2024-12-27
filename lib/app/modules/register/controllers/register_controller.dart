import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/res/validators.dart';
import 'package:onex/app/widgets/custom_textfield.dart';

class RegisterController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  final email = TextFieldData(
      validator: Validator.emailValidator,
      keyboardType: TextInputType.emailAddress);
  final password =
      TextFieldData(validator: Validator.notEmptyValidator, isPassword: true);
  final confirmPassword =
      TextFieldData(validator: Validator.notEmptyValidator, isPassword: true);
  final firstName =
      TextFieldData(validator: Validator.notEmptyValidator);
  final lastName =
      TextFieldData(validator: Validator.notEmptyValidator);
  final phone =
      TextFieldData(validator: Validator.notEmptyValidator, keyboardType: TextInputType.number);
        final seriviceTitle = TextFieldData(
      validator: Validator.notEmptyValidator,);
      final seriviceDescription = TextFieldData(
      validator: Validator.notEmptyValidator,);
      final seriviceTags = TextFieldData(
      validator: Validator.notEmptyValidator,);
}
