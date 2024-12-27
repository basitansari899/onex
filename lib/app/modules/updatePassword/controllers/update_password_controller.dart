import 'package:get/get.dart';
import 'package:onex/app/res/validators.dart';
import 'package:onex/app/widgets/custom_textfield.dart';

class UpdatePasswordController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }

  final password =
      TextFieldData(validator: Validator.notEmptyValidator, isPassword: true);
      final resetPassword =
      TextFieldData(validator: Validator.notEmptyValidator, isPassword: true);
}
