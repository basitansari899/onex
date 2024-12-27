import 'package:flutter/material.dart';
import 'package:onex/app/constants/app_sizes.dart';

class TextFieldLabel extends StatelessWidget {
  final String? label;
  const TextFieldLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(label!,
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(fontSize: Sizes.p12));
  }
}
