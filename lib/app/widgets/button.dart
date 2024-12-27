import 'package:flutter/material.dart';
import 'package:onex/app/theme/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.buttonColor,
    this.textColor = AppColors.primary,
    required this.title,
    required this.onPress,
    this.width = 60,
    this.border = 12,
    this.height = 56,
    this.loading = false,
    this.icon,
  });

  final bool loading;
  final String title;
  final Icon? icon;
  final double height;
  final double width;
  final double border;

  final VoidCallback onPress;

  final Color textColor;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          gradient: buttonColor != null ? null : LinearGradient(
      colors: [
        AppColors.primary, 
        AppColors.green849D04,     
      ],
      begin: Alignment.topCenter,  
      end: Alignment.bottomCenter, 
    ),
          borderRadius: BorderRadius.circular(border),
        ),
        child: loading
            ? const Center(child: CircularProgressIndicator(color: Colors.white))
            : Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title, style: TextStyle(color: textColor, fontWeight: FontWeight.w600,fontSize: 16)),
                    if (icon != null) ...[
                      const SizedBox(width: 8),
                      Icon(icon!.icon, color: textColor, size: 18),
                    ],
                  ],
                ),
              ),
      ),
    );
  }
}
