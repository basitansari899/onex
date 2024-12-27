import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';

class ChatAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppbar({
    super.key,
    required this.theme,
  });

  final TextTheme theme;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      toolbarHeight: 65,
      backgroundColor: Colors.white,
      elevation: 0,
      // leadingWidth: 1,
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: Row(
          children: [
            gapW12,
            Image.asset(height: 24, ImageAsset.backArrowIcon),
          ],
        ),
      ),
      title: Column(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.green,
            radius: 20,
            backgroundImage: AssetImage(ImageAsset.profile2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Stephen",
                  style: theme.bodySmall?.copyWith(
                      fontSize: Sizes.p12, fontWeight: FontWeight.w400)),
              const Icon(Icons.arrow_forward_ios,
                  size: 11, color: Colors.black54),
            ],
          ),
        ],
      ),
      actions: [
        SizedBox(
          width: 56,
        )
      ],
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
