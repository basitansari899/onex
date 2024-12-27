import 'package:flutter/material.dart';
import 'package:onex/app/assets/assets.dart';
import 'package:onex/app/theme/colors.dart';

class TransparentDropDown extends StatelessWidget {
  final String label;
  final onchanged;
  final List<String> list;
  final String hint;
  final String? selected;
  final String? prefixIcon;
  final String? Function(String?)? validator;

  const TransparentDropDown(
      {super.key,
      required this.label,
      required this.onchanged,
      required this.list,
      required this.hint,
      this.validator,
      this.selected,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
        validator: validator,
        isExpanded: true,
        icon: Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: Image.asset(height: 8, ImageAsset.dropdown)),
        style: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(color: AppColors.black),
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            contentPadding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
            filled: true,
            fillColor: AppColors.textfeildFill,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                width: 0.0,
                color: Colors.transparent,
              ),
            ),
            iconColor: AppColors.black,
            suffixIconColor: AppColors.black,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                width: 0.0,
                color: Colors.transparent,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                width: 0.0,
                color: Colors.transparent,
              ),
            ),
            label: Text(label,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: AppColors.placeholderTextColor,
                      fontSize: 12,
                    ))),
        value: selected,
        items: list.map((value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: AppColors.black,
                  ),
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList(),
        onChanged: onchanged);
  }
}
