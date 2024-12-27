import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/modules/register/views/choose_service.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/back_button.dart';
import 'package:onex/app/widgets/button.dart';
import 'package:onex/app/widgets/explore_card.dart';

class ExploreServices extends GetView {
  const ExploreServices({super.key});

  @override
  Widget build(BuildContext context) {
    // Example dynamic data list
    final List<String> services = [
      'Music',
      'Art',
      'Support',
      'Photography',
      'Programming',
      'Writing',
      'Design',
      'Marketing',
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButtonWidget(),
              gapH32,
              Center(
                child: Text(
                  'What do you need?',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                ),
              ),
              gapH12,
              Center(
                child: Text(
                  'Looking to Explore? Uncover thousands of skilled masterful people offering relevant services tailored to your needs. Connect and collaborate today!',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontWeight: FontWeight.w400, fontSize: 10),
                  textAlign: TextAlign.center,
                ),
              ).paddingSymmetric(horizontal: 32),
              gapH24,
              // Dynamic Grid for cards
              GridView.builder(
                shrinkWrap: true, // Important to avoid infinite height error
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 cards per row
                  crossAxisSpacing: 8.0, // Space between columns
                  mainAxisSpacing: 8.0, // Space between rows
                  childAspectRatio: 1.2, // Adjust card height
                ),
                itemCount: services.length,
                itemBuilder: (context, index) {
                  return ExploreCard(title: services[index]);
                },
              ),
              gapH32,
              CustomButton(
                width: Get.width,
                textColor: AppColors.white,
                title: StringConstant.skip,
                onPress: () => Get.to(ChooseService()),
              ),
              gapH24,
            ],
          ).paddingSymmetric(vertical: 16, horizontal: 16),
        ),
      ),
    );
  }
}

