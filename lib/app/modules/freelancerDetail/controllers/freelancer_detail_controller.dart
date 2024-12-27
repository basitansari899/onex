import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';

class FreelancerDetailController extends GetxController {
  List<String> sliderImages = [ImageAsset.guitar1, ImageAsset.guitar2];
  List<int> sliderCount = [];
  String? current;
  int? sliderIndex = 0;

  //TODO: Implement FreelancerDetailController

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

  void increment() => count.value++;
}
