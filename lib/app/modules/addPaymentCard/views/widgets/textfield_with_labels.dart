import 'package:flutter/material.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/style_constants.dart';
import 'package:onex/app/theme/colors.dart';
import 'package:onex/app/widgets/text_field_label.dart';

class TextFieldWithLabel extends StatelessWidget {
  final String? label;
  final String? hint;
  final Widget? prefix;
  final bool showPrefix;
  const TextFieldWithLabel(
      {super.key,
      required this.text,
      this.label,
      this.prefix,
      this.hint,
      this.showPrefix = false});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldLabel(
          label: label,
        ),
        gapH12,
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.p12),
              boxShadow: [StyleConstants.containerShadow]),
          child: TextField(
            style: text.bodySmall?.copyWith(
              fontSize: Sizes.p12,
            ),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Sizes.p12),
                  borderSide: BorderSide(width: 0.5, color: Colors.grey)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Sizes.p12),
                  borderSide: BorderSide(width: 0.5, color: Colors.grey)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Sizes.p12),
                  borderSide: BorderSide(width: 0.5, color: Colors.grey)),
              fillColor: Colors.white,
              hintText: hint,
              filled: true,
              hintStyle: text.bodySmall?.copyWith(
                  fontSize: Sizes.p12,
                  color: AppColors.black.withValues(alpha: 0.3)),
              prefixIcon: showPrefix == false
                  ? null
                  : Padding(
                      padding: const EdgeInsets.all(Sizes.p4),
                      child: Image.asset(height: 40, ImageAsset.master),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
