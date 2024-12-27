import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/style_constants.dart';
import 'package:onex/app/theme/colors.dart';

class NotificationTile extends StatelessWidget {
  final String? img;
  final String? title;
  final String? time;
  const NotificationTile({
    super.key,
    this.img,
    this.time,
    this.title,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Sizes.p12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.p10),
        boxShadow: [StyleConstants.containerShadow],
        color: AppColors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 18,
            backgroundImage: CachedNetworkImageProvider(img!),
          ),
          gapW12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? "",
                  style: text.bodyMedium?.copyWith(
                      fontSize: Sizes.p14, fontWeight: FontWeight.w400),
                ),
                Text(
                  time ?? "",
                  style: text.bodyMedium?.copyWith(
                      fontSize: Sizes.p10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black.withValues(alpha: 0.5)),
                )
              ],
            ),
          ),
          GestureDetector(onTap: () {}, child: Icon(Icons.more_horiz)),
        ],
      ),
    );
  }
}
