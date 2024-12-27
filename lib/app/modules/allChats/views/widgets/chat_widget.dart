import 'package:flutter/material.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/theme/colors.dart';

class ChatWidget extends StatelessWidget {
  final bool isRead;
  final String? image;
  final String? name;
  final String? time;
  final String? message;
  final void Function()? ontap;
  const ChatWidget({
    super.key,
    this.image,
    this.name,
    this.isRead = false,
    this.message,
    this.ontap,
    this.time,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Row(
            children: [
              isRead
                  ? SizedBox()
                  : Row(
                      children: [
                        Container(
                          height: 11,
                          width: 11,
                          decoration: BoxDecoration(
                              color: Colors.blue, shape: BoxShape.circle),
                        ),
                        gapW12,
                      ],
                    ),
              CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage(image!),
              ),
              gapW12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            name ?? "",
                            style: text.bodySmall?.copyWith(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              time ?? "",
                              style: text.bodySmall?.copyWith(
                                  color:
                                      AppColors.black.withValues(alpha: 0.6)),
                            ),
                            gapW4,
                            Image.asset(
                                width: 10,
                                height: 15,
                                ImageAsset.arrowRightYellow),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 115,
                      child: Text(
                        message ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: text.bodySmall?.copyWith(
                            fontSize: 15,
                            color: AppColors.black.withValues(alpha: 0.6)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}
