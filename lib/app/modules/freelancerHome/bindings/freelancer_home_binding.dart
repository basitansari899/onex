import 'package:get/get.dart';

import '../controllers/freelancer_home_controller.dart';

class FreelancerHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FreelancerHomeController>(
      () => FreelancerHomeController(),
    );
  }
}
