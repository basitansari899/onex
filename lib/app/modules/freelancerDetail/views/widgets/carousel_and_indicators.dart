import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/modules/freelancerDetail/controllers/freelancer_detail_controller.dart';
import 'package:onex/app/modules/freelancerDetail/views/widgets/back_and_fav.dart';
import 'package:onex/app/theme/colors.dart';

class CarouselSliderAndIndicators extends StatelessWidget {
  const CarouselSliderAndIndicators({
    super.key,
    required this.size,
    required this.controller,
  });

  final Size size;
  final FreelancerDetailController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                enableInfiniteScroll: false,
                reverse: false,
                viewportFraction: 1,
                height: size.height * 0.35,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 400),
                padEnds: false,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  controller.current = controller.sliderImages[index];
                  controller.update();
                },
              ),
              items: controller.sliderImages.map((i) {
                return SizedBox(
                  width: double.maxFinite,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(Sizes.p40),
                          bottomRight: Radius.circular(Sizes.p40)),
                      child: Image.asset(
                        i,
                        fit: BoxFit.cover,
                      )),
                );
              }).toList(),
            ),
            BackAndFavButton()
          ],
        ),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: controller.sliderImages.map((entry) {
              return GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Container(
                    width: 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (controller.current == entry
                            ? AppColors.green849D04
                            : Colors.black)),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
