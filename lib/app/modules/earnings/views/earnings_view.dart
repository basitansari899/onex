import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/modules/earnings/views/widgets/analytics_summary_tile.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/custom_app_bar.dart';
import 'package:onex/app/widgets/heading.dart';

import '../controllers/earnings_controller.dart';

class EarningsView extends GetView<EarningsController> {
  const EarningsView({super.key});
  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.appbarAndBodyColor,
      appBar: CustomAppbar(text: text, title: StringConstant.earnings),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              gapH12,
              Container(
                padding: EdgeInsets.all(Sizes.p18),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(Sizes.p8)),
                    border: Border.all(
                        width: 0.5,
                        color: AppColors.black.withValues(
                          alpha: 0.3,
                        ))),
                child: Row(
                  children: [
                    Text(
                      StringConstant.totalEarnings,
                      style: text.bodyMedium
                          ?.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "\$10,000",
                      style: text.bodyMedium
                          ?.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Text(
                      StringConstant.withDraw,
                      style: text.bodyMedium?.copyWith(
                          fontSize: 14,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              gapH12,
              Heading(text: text, title: "Analytics"),
              gapH12,
              Container(
                padding: EdgeInsets.all(Sizes.p12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(Sizes.p8)),
                    border: Border.all(
                        width: 0.5,
                        color: AppColors.black.withValues(
                          alpha: 0.3,
                        ))),
                child: Column(
                  children: [
                    AnalyticsSummaryTile(
                        text: text,
                        title: "${StringConstant.earningsIn} September",
                        value: "\$100000"),
                    gapH12,
                    AnalyticsSummaryTile(
                        text: text,
                        title: StringConstant.avgSellingPrice,
                        value: "\$100000"),
                    gapH12,
                    AnalyticsSummaryTile(
                        text: text,
                        title: StringConstant.activeOrders,
                        value: "\$100000"),
                    gapH12,
                    AnalyticsSummaryTile(
                        text: text,
                        title: StringConstant.completedOrders,
                        value: "\$100000"),
                  ],
                ),
              )
            ],
          ).paddingSymmetric(horizontal: Sizes.appHorizontalPadding),
        ),
      ),
    );
  }
}
