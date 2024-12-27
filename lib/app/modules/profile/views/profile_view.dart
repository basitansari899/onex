import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/custom_app_bar.dart';
import 'package:onex/app/widgets/custom_list_tile.dart';
import 'package:onex/app/widgets/custom_switch.dart';
import 'package:onex/app/widgets/dashed_divider.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.appbarAndBodyColor,
      appBar: CustomAppbar(text: text, title: "Profile"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH12,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.p8),
                    border: Border.all(width: 0.5)),
                padding: EdgeInsets.all(Sizes.p12),
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 27,
                        backgroundImage: CachedNetworkImageProvider(
                            ImageAsset.placeholderNetworkImage)),
                    gapW12,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Awazubillah S.",
                          style: text.bodyMedium?.copyWith(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        gapH8,
                        Row(
                          children: [
                            Text(
                              StringConstant.personalBalance,
                              style: text.bodyMedium?.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              " \$125",
                              style: text.bodyMedium?.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              gapH20,
              Row(
                children: [
                  CustomSwitch(
                    initialValue: false,
                    onChanged: (value) {},
                  ),
                  gapW12,
                  Text(
                    "Seller Mode",
                    style: text.titleMedium?.copyWith(
                        fontSize: Sizes.p16, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              gapH20,
              DashedDivider(),
              gapH12,
              CustomListTile(
                leadingIcon: ImageAsset.earning,
                tralingIcon: ImageAsset.arrowRightDarkBlack,
                title: StringConstant.earnings,
                onTap: () {
                  Get.toNamed(Routes.EARNINGS);
                },
              ),
              gapH12,
              CustomListTile(
                leadingIcon: ImageAsset.profile,
                tralingIcon: ImageAsset.arrowRightDarkBlack,
                title: StringConstant.myProfile,
                onTap: () {
                  Get.toNamed(Routes.MY_PROFILE);
                },
              ),
              gapH12,
              CustomListTile(
                leadingIcon: ImageAsset.favs,
                tralingIcon: ImageAsset.arrowRightDarkBlack,
                title: StringConstant.favs,
                onTap: () {
                  Get.toNamed(Routes.FAVORITES);
                },
              ),
              gapH12,
              CustomListTile(
                leadingIcon: ImageAsset.bell,
                tralingIcon: ImageAsset.arrowRightDarkBlack,
                title: StringConstant.notifications,
                onTap: () {
                  Get.toNamed(Routes.NOTIFICATIONS);
                },
              ),
              gapH12,
              CustomListTile(
                leadingIcon: ImageAsset.orders,
                tralingIcon: ImageAsset.arrowRightDarkBlack,
                title: StringConstant.orders,
                onTap: () {
                  Get.toNamed(Routes.ORDERS);
                },
              ),
              gapH12,
              DashedDivider(),
              gapH12,
              CustomListTile(
                leadingIcon: ImageAsset.logout,
                title: StringConstant.logout,
                onTap: () {},
              )
            ],
          ).paddingSymmetric(horizontal: Sizes.appHorizontalPadding),
        ),
      ),
    );
  }
}
