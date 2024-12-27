import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/modules/allChats/views/widgets/chat_search_bar.dart';
import 'package:onex/app/modules/allChats/views/widgets/chat_widget.dart';
import 'package:onex/app/routes/app_pages.dart';
import 'package:onex/app/theme/colors.dart';

import '../controllers/all_chats_controller.dart';

class AllChatsView extends GetView<AllChatsController> {
  const AllChatsView({super.key});
  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;
    return Scaffold(
        backgroundColor: AppColors.appbarAndBodyColor,
        appBar: AppBar(
          leadingWidth: 200,
          leading: Text(
            "Messages",
            style: text.headlineLarge
                ?.copyWith(fontWeight: FontWeight.bold, fontSize: 34),
          ).paddingOnly(left: Sizes.p12),
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.appbarAndBodyColor,
          scrolledUnderElevation: 0,
          centerTitle: false,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChatSearchBar(text: text),
              gapH12,
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ChatWidget(
                      text: text,
                      message:
                          "That's great, I can help you with that! What type of product are you...",
                      isRead: false,
                      image: ImageAsset.profile2,
                      name: "Mark Harry $index ",
                      time: "9:40 AM",
                      ontap: () => Get.toNamed(Routes.CHATTING),
                    );
                  })
            ],
          ).paddingSymmetric(horizontal: Sizes.appHorizontalPadding),
        )));
  }
}
