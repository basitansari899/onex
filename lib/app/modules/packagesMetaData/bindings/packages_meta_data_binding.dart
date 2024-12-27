import 'package:get/get.dart';

import '../controllers/packages_meta_data_controller.dart';

class PackagesMetaDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PackagesMetaDataController>(
      () => PackagesMetaDataController(),
    );
  }
}
