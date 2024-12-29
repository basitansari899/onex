import 'package:get/get.dart';

enum SelectedTab { home,category,message,reels, profile}

class LandingViewController extends GetxController {
  final selectedTab = SelectedTab.home.obs;

  void onHomePressed() => selectedTab.value = SelectedTab.home;
  void onCategoryPressed() => selectedTab.value = SelectedTab.category;
  void onMessagePressed() => selectedTab.value = SelectedTab.message;
  void onReelsPressed() => selectedTab.value = SelectedTab.reels;
  void onMyProfilePressed() => selectedTab.value = SelectedTab.profile;
}
