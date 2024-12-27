import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/modules/freelancerDetail/views/widgets/delivery_days_button.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/cached_image_viewer.dart';

class OrderCard extends StatelessWidget {
  final String? banner;
  final String? title;
  final String? name;
  final String? profilePic;
  final String? orderAmount;
  final String? date;
  final Color? statusColor;
  final String? status;
  const OrderCard({
    super.key,
    this.banner,
    this.date,
    this.name,
    this.orderAmount,
    this.profilePic,
    this.statusColor,
    this.status,
    this.title,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.p12),
              border: Border.all(
                  width: 0.5, color: AppColors.black.withValues(alpha: 0.3))),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(Sizes.p4),
                          child: CachedImageViewer(url: banner),
                        ),
                      ),
                      gapW8,
                      Expanded(
                        child: Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          title ?? "",
                          style: text.bodyMedium?.copyWith(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                  gapH12,
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundImage:
                            CachedNetworkImageProvider(profilePic ?? ""),
                      ),
                      gapW8,
                      Text(
                        name ?? "",
                        style: text.bodyMedium?.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Text(
                        "\$$orderAmount",
                        style: text.bodyMedium?.copyWith(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ],
              ).paddingOnly(
                  left: Sizes.p12,
                  right: Sizes.p12,
                  top: Sizes.p12,
                  bottom: Sizes.p8),
              Divider(),
              Row(
                children: [
                  Text(
                    date ?? "-",
                    style: text.bodyMedium
                        ?.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  SimpleButton(
                    onTap: () {},
                    horizontalPadding: Sizes.p12,
                    verticalPadding: Sizes.p4,
                    textColor: AppColors.white,
                    textHeight: Sizes.p10,
                    title: status,
                    bgColor: statusColor ?? AppColors.yellow,
                  )
                ],
              ).paddingSymmetric(horizontal: Sizes.appHorizontalPadding),
              gapH12,
            ],
          ),
        ),
        gapH12
      ],
    );
  }
}
