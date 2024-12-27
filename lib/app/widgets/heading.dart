import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String title;
  const Heading({super.key, required this.text, required this.title});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: text.headlineSmall
          ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
    );
  }
}
