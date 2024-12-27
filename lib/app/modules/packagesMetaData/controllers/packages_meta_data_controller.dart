import 'package:get/get.dart';
import 'package:onex/app/res/validators.dart';
import 'package:onex/app/widgets/custom_textfield.dart';

class PackagesMetaDataController extends GetxController {
  //TODO: Implement PackagesMetaDataController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  final seriviceTitle = TextFieldData(
    validator: Validator.notEmptyValidator,
  );
  final packageTitle = TextFieldData(
    validator: Validator.notEmptyValidator,
  );
  void increment() => count.value++;
}
