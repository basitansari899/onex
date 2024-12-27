import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onex/app/theme/colors.dart';

final appTheme = _createAppTheme(ThemeData.light());

ThemeData _createAppTheme(ThemeData baseTheme) {
  final textTheme = _createTextTheme(baseTheme.textTheme);
  return baseTheme.copyWith(
    primaryColor: AppColors.signupTextColor, // Set your primary color here
    scaffoldBackgroundColor: AppColors.signBackgroundColor,
    datePickerTheme: const DatePickerThemeData(backgroundColor: Colors.white),
    dialogBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.signupTextColor,
      actionsIconTheme: IconThemeData(color: AppColors.signupTextColor),
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: AppColors.signBackgroundColor, // Background color for the BottomAppBar
    ),
    iconTheme: const IconThemeData(
      color: AppColors.signBackgroundColor, // Default color for icons in BottomAppBar
    ),
    textTheme: textTheme,
    colorScheme: baseTheme.colorScheme.copyWith(
      primary: AppColors.signupTextColor, // Primary color for buttons, active tabs, etc.
      secondary: AppColors.signupTextColor, // Secondary color for other elements
      surface: AppColors.signBackgroundColor, // Background color
      error: AppColors.warningColor, // Error color for forms, etc.
    ),
  );
}

TextTheme _createTextTheme(TextTheme baseTheme) {
  return GoogleFonts.robotoTextTheme(baseTheme).copyWith(
    displayLarge: const TextStyle(fontSize: 40, color: AppColors.textColor, fontWeight: FontWeight.w500),
    displayMedium: const TextStyle(fontSize: 32, color: AppColors.textColor, fontWeight: FontWeight.w500),
    displaySmall: const TextStyle(fontSize: 28, color: AppColors.textColor, fontWeight: FontWeight.w500),
    headlineMedium: const TextStyle(fontSize: 24, color: AppColors.textColor, fontWeight: FontWeight.w500),
    headlineSmall: const TextStyle(fontSize: 20, color: AppColors.textColor, fontWeight: FontWeight.w500),
    titleLarge: const TextStyle(fontSize: 16, color: AppColors.textColor, fontWeight: FontWeight.w500),
    bodyLarge: const TextStyle(fontSize: 16, color: AppColors.textColor),
    bodyMedium: const TextStyle(fontSize: 14, color: AppColors.textColor),
    labelSmall: const TextStyle(fontSize: 12, color: AppColors.textColor, fontWeight: FontWeight.w600),
  );
}

extension XTextThemeExtension on TextTheme {
  TextStyle? get bodyTextBold => bodyLarge?.copyWith(fontWeight: FontWeight.w700, fontSize: 24);

  TextStyle? get bodyTextSemiBold => displayMedium?.copyWith(fontSize: 16, fontWeight: FontWeight.w400);

  TextStyle? get bodyText1SemiBold => displayMedium?.copyWith(fontSize: 16, fontWeight: FontWeight.w600);

  TextStyle? get bodyText4SemiBold => displayMedium?.copyWith(fontSize: 16, fontWeight: FontWeight.w500);

  TextStyle? get headlineTextMedium => displayLarge?.copyWith(fontSize: 14, fontWeight: FontWeight.w400);

  TextStyle? get headlineTextSmall => headlineSmall?.copyWith(fontSize: 12, fontWeight: FontWeight.w400);

  TextStyle? get headlineTextLarge => bodyLarge?.copyWith(fontSize: 20, fontWeight: FontWeight.w600);

  TextStyle? get headlineText1Large => bodyLarge?.copyWith(fontSize: 36, fontWeight: FontWeight.w600);

  TextStyle? get bodyText2SemiBold => bodyMedium?.copyWith(fontWeight: FontWeight.w500);

  TextStyle? get bodyText2Bold => bodyMedium?.copyWith(fontWeight: FontWeight.w600);

  TextStyle? get bodyText2BoldNumeral => bodyMedium?.copyWith(fontWeight: FontWeight.w700);

  TextStyle? get bodyText3 => bodyMedium?.copyWith(fontSize: 12);

  TextStyle? get bodyText4 => bodyMedium?.copyWith(fontSize: 10);

  TextStyle? get bodyText3SemiBold => bodyText3?.copyWith(fontWeight: FontWeight.w500);

  TextStyle? get bodyText3Bold => bodyText3?.copyWith(fontWeight: FontWeight.w600);

  TextStyle? get bodyText3BoldNumeral => bodyText3?.copyWith(fontWeight: FontWeight.w700);

  TextStyle get buttonText => const TextStyle(fontSize: 14, fontWeight: FontWeight.w600);

  TextStyle get buttonTextExtraSmallNormal => const TextStyle(fontSize: 12, fontWeight: FontWeight.normal);

  TextStyle get buttonTextExtraSmall => const TextStyle(fontSize: 12, fontWeight: FontWeight.w600);

  TextStyle get bodyTextExtraSmall => const TextStyle(fontSize: 10, fontWeight: FontWeight.w700);
}
