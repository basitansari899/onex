import 'package:flutter/material.dart';
import 'package:onex/app/widgets/heading.dart';
import 'package:onex/app/widgets/view_all_button.dart';

class TopRatedHeadingWithViewAllButton extends StatelessWidget {
  const TopRatedHeadingWithViewAllButton({
    super.key,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Heading(text: text, title: "Top-rated Freelancers"),
        Spacer(),
        ViewAllButton(text: text)
      ],
    );
  }
}
