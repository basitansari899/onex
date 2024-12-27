import 'package:flutter/material.dart';
import 'package:onex/app/theme/colors.dart';

class InfoTile extends StatelessWidget {
  final String? title;
  final Widget? value;
  const InfoTile({super.key, this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title!,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.placeholderTextColor, fontSize: 10)),
        SizedBox(height: 4),
        value!,
      ],
    );
  }
}
