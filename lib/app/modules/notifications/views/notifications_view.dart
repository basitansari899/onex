import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/modules/notifications/views/widgets/notification_tile.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/custom_app_bar.dart';

import '../controllers/notifications_controller.dart';

class NotificationsView extends GetView<NotificationsController> {
  const NotificationsView({super.key});
  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.appbarAndBodyColor,
      appBar: CustomAppbar(text: text, title: "Notifications"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return NotificationTile(
                      text: text,
                      img: ImageAsset.placeholderNetworkImage,
                      time: "20 minutes ago",
                      title:
                          "Lorem ipsum dolor sit amet consectetur. Donec sed tellus eu ultrices ut.",
                    ).paddingOnly(bottom: Sizes.p12);
                  })
            ],
          ).paddingSymmetric(horizontal: Sizes.appHorizontalPadding),
        ),
      ),
    );
  }
}
