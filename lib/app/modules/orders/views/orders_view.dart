import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/modules/orders/views/widgets/order_card.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/home_appbar.dart';

import '../controllers/orders_controller.dart';

class OrdersView extends GetView<OrdersController> {
  const OrdersView({super.key});
  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;
    return Scaffold(
        backgroundColor: AppColors.appbarAndBodyColor,
        appBar: HomeAppbar(
          userName: "Ayan kahn",
          profilePic: ImageAsset.profilePicture,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH12,
              ListView.builder(
                  itemCount: 10,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return OrderCard(
                      text: text,
                      banner: ImageAsset.placeholderNetworkImage,
                      profilePic: ImageAsset.placeholderNetworkImage,
                      title: "Do modern UI UX design, website or dashboard...",
                      name: "Ayan khan",
                      orderAmount: "125",
                      date: "12-5-2029",
                      status: "In Progress",
                      statusColor: AppColors.yellow,
                    );
                  })
            ],
          ).paddingSymmetric(horizontal: Sizes.appHorizontalPadding),
        )));
  }
}
