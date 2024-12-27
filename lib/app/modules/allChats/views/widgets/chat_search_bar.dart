import 'package:flutter/material.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/theme/colors.dart';

class ChatSearchBar extends StatelessWidget {
  const ChatSearchBar({
    super.key,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        style: text.bodySmall?.copyWith(
          fontSize: Sizes.p12,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          isDense: true,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.p12),
              borderSide: BorderSide(width: 0.5, color: Colors.transparent)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.p12),
              borderSide: BorderSide(width: 0.5, color: Colors.transparent)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.p12),
              borderSide: BorderSide(width: 0.5, color: Colors.transparent)),
          fillColor: Colors.black.withValues(alpha: 0.12),
          hintText: "Search",
          filled: true,
          hintStyle: text.bodySmall?.copyWith(
              fontSize: Sizes.p17,
              color: AppColors.black.withValues(alpha: 0.6)),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(Sizes.p12),
            child: Image.asset(height: 24, ImageAsset.search),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(Sizes.p12),
            child: Image.asset(height: 24, ImageAsset.mic),
          ),
        ),
      ),
    );
  }
}
