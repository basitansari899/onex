import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/style_constants.dart';
import 'package:onex/app/modules/home/views/widgets/profile_pic_title_subtitle.dart';
import 'package:onex/app/theme/colors.dart';

class HomeFreelancerCard extends StatelessWidget {
  final String? name;
  final String? service;
  final String? profileImage;
  final List<String>? categories;
  final String? banner1;
  final String? banner2;
  const HomeFreelancerCard({
    super.key,
    required this.profileImage,
    required this.name,
    required this.service,
    this.banner1,
    required this.banner2,
    required this.categories,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.p16),
          color: AppColors.white,
          boxShadow: [StyleConstants.containerShadow]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              ProfilePicWithTitleAndSubtitle(
                  profileImage: profileImage,
                  name: name,
                  text: text,
                  isNameBold: true,
                  subtitle: service),
              gapH12,
              Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  height: 28,
                  child: ListView.builder(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: categories?.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 28,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.purpleB69BED),
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(Sizes.p40)),
                          padding: EdgeInsets.symmetric(
                              horizontal: Sizes.p12, vertical: Sizes.p4),
                          child: Text(
                            categories![index].toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontSize: Sizes.p14,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.purpleB69BED),
                          ),
                        ).paddingOnly(right: Sizes.p12);
                      }),
                ),
              ),
            ],
          ).paddingAll(Sizes.p12),
          SizedBox(
            height: 115,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(Sizes.p16),
                      bottomRight: Radius.circular(Sizes.p16)),
                  child: Image.asset(
                    banner1!,
                    fit: BoxFit.fill,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(Sizes.p16),
                      bottomRight: Radius.circular(Sizes.p16)),
                  child: Image.asset(
                    banner2!,
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
