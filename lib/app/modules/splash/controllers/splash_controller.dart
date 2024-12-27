import 'package:get/get.dart';
import 'package:onex/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    checkUserState();
    super.onInit();
  }

 void checkUserState() async {
    Future.delayed(Duration(seconds: 2), ()  {
      Get.log('routing ready to onboard');
     Get.offAllNamed(Routes.ONBOARDING);
    });
  }
}
