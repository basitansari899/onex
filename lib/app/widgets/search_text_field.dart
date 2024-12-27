import 'package:flutter/material.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/constants/string_constants.dart';
import 'package:onex/app/theme/colors.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? searchHint;
  const SearchTextField({super.key, this.controller, this.searchHint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: AppColors.black.withValues(alpha: 0.3),
      decoration: InputDecoration(
          hintText: searchHint ?? StringConstant.searchBarText,
          hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: Sizes.p12,
              fontWeight: FontWeight.normal,
              color: AppColors.black.withValues(alpha: 0.3)),
          prefixIcon: Container(
              padding: EdgeInsets.all(Sizes.p12),
              height: 22,
              child: Image.asset(ImageAsset.search)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.p12),
              borderSide: BorderSide(
                  width: 0.3, color: AppColors.black.withValues(alpha: 0.3))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.p12),
              borderSide: BorderSide(
                  width: 0.3, color: AppColors.black.withValues(alpha: 0.3))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Sizes.p12),
              borderSide: BorderSide(
                  width: 0.3, color: AppColors.black.withValues(alpha: 0.3)))),
    );
  }
}
