import 'package:flutter/material.dart';

class AnalyticsSummaryTile extends StatelessWidget {
  final String? title;
  final String? value;
  const AnalyticsSummaryTile(
      {super.key,
      required this.text,
      required this.title,
      required this.value});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title ?? "",
          style: text.bodyMedium
              ?.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        Spacer(),
        Text(
          value ?? "",
          style: text.bodyMedium
              ?.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
