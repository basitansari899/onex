import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/theme/colors.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? profilePic;
  final String? userName;
  const HomeAppbar({super.key, this.profilePic, this.userName});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.white,
      leading: Padding(
        padding: const EdgeInsets.only(left: Sizes.p12),
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(profilePic ?? ImageAsset.profilePicture),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 13, color: AppColors.black.withOpacity(0.7))),
          Text(userName ?? "",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(fontSize: 14))
        ],
      ),
      centerTitle: false,
      actions: [
        Image.asset(height: 24, width: 24, ImageAsset.bell)
            .paddingOnly(right: Sizes.p12)
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
