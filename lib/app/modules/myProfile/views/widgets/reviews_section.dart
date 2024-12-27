import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/theme/colors.dart';

class MyProfileReviewsSection extends StatelessWidget {
  const MyProfileReviewsSection({
    super.key,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      color: Color(0xffF7F7F7),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Reviews",
              style: text.headlineLarge
                  ?.copyWith(fontSize: Sizes.p18, fontWeight: FontWeight.bold),
            ),
            Text("Kim Turner",
                style: text.titleSmall?.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                )),
            Text(
              "Amazing UI UX Designer",
              style: text.headlineLarge
                  ?.copyWith(fontSize: Sizes.p17, fontWeight: FontWeight.w700),
            ),
            gapH8,
            Row(
              children: [
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  itemSize: Sizes.p16,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                gapW2,
                Container(
                  height: Sizes.p8 - 3,
                  width: Sizes.p8 - 3,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 207, 207, 207),
                      borderRadius: BorderRadius.circular(50)),
                ),
                gapW4,
                Text("10 Jan 2021",
                    style: text.titleSmall?.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppColors.placeholderTextColor)),
              ],
            ),
            gapH8,
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed do eiusmod tempor incididunt",
                style: text.titleSmall?.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.placeholderTextColor)),
            gapH8,
            Text("1 reply",
                style: text.titleSmall?.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.placeholderTextColor)),
          ],
        ),
      ),
    );
  }
}
