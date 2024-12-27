import 'package:flutter/material.dart';
import 'package:onex/app/constants/app_sizes.dart';
import 'package:onex/app/widgets/custom_icon_button.dart';

class CustomListTile extends StatelessWidget {
  final String? leadingIcon;
  final String? tralingIcon;
  final String? title;
  final void Function()? onTap;
  const CustomListTile(
      {super.key, this.leadingIcon, this.onTap, this.title, this.tralingIcon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(Sizes.p12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.p8),
            color: Color(0xffbecad9).withValues(alpha: 0.3)),
        child: Row(
          children: [
            leadingIcon == null
                ? SizedBox()
                : CustomIconButton(
                    height: 24, icon: leadingIcon!, onTap: () {}),
            gapW12,
            Text(
              title ?? "",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w400, fontSize: 14),
            ),
            Spacer(),
            tralingIcon == null
                ? SizedBox()
                : CustomIconButton(height: 24, icon: tralingIcon!, onTap: () {})
          ],
        ),
      ),
    );
  }
}
