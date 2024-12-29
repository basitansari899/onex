import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/modules/allChats/views/all_chats_view.dart';
import 'package:onex/app/modules/categoryResult/views/category_result_view.dart';
import 'package:onex/app/modules/home/views/home_view.dart';
import 'package:onex/app/modules/orders/views/orders_view.dart';
import 'package:onex/app/modules/profile/views/profile_view.dart';
import 'package:onex/app/theme/colors.dart';

import '../controllers/landing_view_controller.dart';

class LandingViewView extends GetView<LandingViewController> {
  const LandingViewView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavigationMenu(),
    );
  }
}

class Body extends GetView<LandingViewController> {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => IndexedStack(
        index: controller.selectedTab.value.index,
        children: const [
          HomeView(),
          CategoryResultView(),
          AllChatsView(),
          OrdersView(),
          ProfileView(),
        ],
      ),
    );
  }
}
class BottomNavigationMenu extends GetView<LandingViewController> {
  const BottomNavigationMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          Obx(
            () => BottomNavigationButton(
              icon: SvgPicture.asset(
                ImageAsset.icHome,
                color: controller.selectedTab.value == SelectedTab.home ? AppColors.primary : AppColors.grayText,
                height: 20,
                width: 20,
              ),
              label: 'Home',
              isSelected: controller.selectedTab.value == SelectedTab.home,
              onPressed: controller.onHomePressed,
            ),
          ),
          Obx(
            () => BottomNavigationButton(
              icon: SvgPicture.asset(
                ImageAsset.icCategory,
                color: controller.selectedTab.value == SelectedTab.category ? AppColors.primary : AppColors.grayText,
                height: 20,
                width: 20,
              ),
              label: 'Categories',
              isSelected: controller.selectedTab.value == SelectedTab.category,
              onPressed: controller.onCategoryPressed,
            ),
          ),
          Obx(
            () => BottomNavigationButton(
              icon: SvgPicture.asset(
                ImageAsset.icSms,
                color: controller.selectedTab.value == SelectedTab.message ? AppColors.primary : AppColors.grayText,
                height: 20,
                width: 20,
              ),
              label: 'Message',
              isSelected: controller.selectedTab.value == SelectedTab.message,
              onPressed: controller.onMessagePressed,
            ),
          ),
          Obx(
            () => BottomNavigationButton(
              icon: SvgPicture.asset(
                ImageAsset.icReels,
                color: controller.selectedTab.value == SelectedTab.reels ? AppColors.primary : AppColors.grayText,
                height: 20,
                width: 20,
              ),
              label: 'Reels',
              isSelected: controller.selectedTab.value == SelectedTab.reels,
              onPressed: controller.onReelsPressed,
            ),
          ),
          Obx(
            () => BottomNavigationButton(
              icon: SvgPicture.asset(
                ImageAsset.icProfile,
                color: controller.selectedTab.value == SelectedTab.profile ? AppColors.primary : AppColors.grayText,
                height: 20,
                width: 20,
              ),
              label: 'Profile',
              isSelected: controller.selectedTab.value == SelectedTab.profile,
              onPressed: controller.onMyProfilePressed,
            ),
          ),
         
        ],
      ),
    );
  }
}
class BottomNavigationButton extends StatelessWidget {
  const BottomNavigationButton({
    required this.label,
    this.onPressed,
    this.icon,
    this.isSelected = false,
    this.isShowAlert = false,
    Key? key,
  }) : super(key: key);

  final Widget? icon;
  final String label;
  final bool isSelected;
  final bool isShowAlert;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final screenWidth = Get.width;
    final color = isSelected ? AppColors.primary : AppColors.grayText;
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: screenWidth / 5.5,
        height: 56,
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIcon(color, isShowAlert),
                _buildLabel(color),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SizedBox _buildIcon(Color color, bool isShowAlert) {
    return SizedBox(
      width: 32,
      height: 34,
      child: Stack(
        children: [
          Align(
            child: IconTheme(
              data: IconThemeData(
                color: color,
              ),
              child: icon ?? Container(),
            ),
          ),
          if (isShowAlert)
            const Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.error, size: 12, color: Colors.red),
            ),
        ],
      ),
    );
  }

  Text _buildLabel(Color color) {
    return Text(
      label,
      style: Get.textTheme.bodyMedium?.copyWith(
        color: color,
        fontSize: 12,
        fontWeight: isSelected ? FontWeight.w600 : null,
      ),
    );
  }
}