import 'package:flutter/material.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/theme/colors.dart';

class MyProfileMiddleSection extends StatelessWidget {
  const MyProfileMiddleSection({
    super.key,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffF7F7F7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(Sizes.p12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Description",
                  style: text.headlineLarge?.copyWith(
                      fontSize: Sizes.p18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Row(
                  children: [
                    Image.asset(height: Sizes.p14, ImageAsset.edit),
                    gapW8,
                    Text(
                      "Edit",
                      style: text.titleSmall
                          ?.copyWith(color: AppColors.purpleB69BED),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 12),
            Text(
              "As a UX designer, I specialize in crafting seamless user experiences that align with your brand and resonate with your audience. My services encompass comprehensive user research, wireframing, prototyping, and interface design. I focus on understanding user behaviors, pain points, and preferences to create intuitive and engaging digital products. Whether it's improving existing interfaces or creating new ones from scratch, I ensure designs that are user-centric, visually appealing, and optimized for usability across devices and platforms.",
              style: TextStyle(color: Colors.grey[800]),
            ),
          ],
        ),
      ),
    );
  }
}
