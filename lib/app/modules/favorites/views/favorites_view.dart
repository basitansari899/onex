import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/modules/favorites/views/widgets/fav_card.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/custom_app_bar.dart';
import '../controllers/favorites_controller.dart';

class FavoritesView extends GetView<FavoritesController> {
  const FavoritesView({super.key});
  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.appbarAndBodyColor,
      appBar: CustomAppbar(text: text, title: StringConstant.favs),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH12,
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return FavCard(
                      text: text,
                      image: ImageAsset.placeholderNetworkImage,
                      title: "UX/UI Design",
                      subTitle: "Ayan khan",
                      isFav: false,
                    );
                  }).paddingOnly(bottom: Sizes.p12),
              gapH12,
              Divider()
            ],
          ).paddingSymmetric(horizontal: Sizes.appHorizontalPadding),
        ),
      ),
    );
  }
}
