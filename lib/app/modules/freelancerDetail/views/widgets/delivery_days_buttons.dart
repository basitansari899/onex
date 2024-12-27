import 'package:flutter/material.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/modules/freelancerDetail/views/widgets/delivery_days_button.dart';

class DeliveryDaysButton extends StatelessWidget {
  final String? option1;
  final String? option2;
  final String? option3;
  const DeliveryDaysButton(
      {super.key,
      required this.option1,
      required this.option2,
      required this.option3});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SimpleButton(
            title: option1,
          ),
        ),
        gapW12,
        Expanded(
          child: SimpleButton(
            title: option2,
          ),
        ),
        gapW12,
        Expanded(
          child: SimpleButton(
            title: option3,
          ),
        ),
      ],
    );
  }
}
