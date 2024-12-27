import 'package:get/get.dart';

import '../controllers/add_payment_card_controller.dart';

class AddPaymentCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPaymentCardController>(
      () => AddPaymentCardController(),
    );
  }
}
