import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/category_chip.dart';

class ServicesHorizontalList extends StatelessWidget {
  const ServicesHorizontalList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringConstant.services,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontSize: Sizes.p16),
        ),
        gapH12,
        SizedBox(
          height: 28,
          child: ListView.builder(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return CategoryChip(
                  text: "Music",
                  isSelected: index == 0 ? true : false,
                  color: AppColors.white,
                ).paddingOnly(right: Sizes.p12);
              }),
        ),
      ],
    );
  }
}
