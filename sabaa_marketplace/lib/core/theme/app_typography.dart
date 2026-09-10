import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTypography {
  // Poppins Font - Primary
  static const String poppinsFamily = 'Poppins';
  static const String interFamily = 'Inter';

  // Display Styles
  static const TextStyle displayLarge = TextStyle(
    fontFamily: poppinsFamily,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
    height: 1.25,
  );

  static const TextStyle displayMedium = TextStyle(
    fontFamily: poppinsFamily,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.3,
    height: 1.3,
  );

  static const TextStyle displaySmall = TextStyle(
    fontFamily: poppinsFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 1.35,
  );

  // Headline Styles
  static const TextStyle headlineLarge = TextStyle(
    fontFamily: poppinsFamily,
    fontSize: 22,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.4,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontFamily: poppinsFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.45,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontFamily: poppinsFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.5,
  );

  // Title Styles
  static const TextStyle titleLarge = TextStyle(
    fontFamily: interFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.45,
  );

  static const TextStyle titleMedium = TextStyle(
    fontFamily: interFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.5,
  );

  static const TextStyle titleSmall = TextStyle(
    fontFamily: interFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.1,
    height: 1.55,
  );

  // Body Styles
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: interFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.5,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: interFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.57,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: interFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    height: 1.67,
  );

  // Label Styles
  static const TextStyle labelLarge = TextStyle(
    fontFamily: interFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    height: 1.57,
  );

  static const TextStyle labelMedium = TextStyle(
    fontFamily: interFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.67,
  );

  static const TextStyle labelSmall = TextStyle(
    fontFamily: interFamily,
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    height: 1.73,
  );
}

class AppTextTheme {
  static TextTheme lightTextTheme() {
    return TextTheme(
      displayLarge: AppTypography.displayLarge.copyWith(color: AppColors.lightTextPrimary),
      displayMedium: AppTypography.displayMedium.copyWith(color: AppColors.lightTextPrimary),
      displaySmall: AppTypography.displaySmall.copyWith(color: AppColors.lightTextPrimary),
      headlineLarge: AppTypography.headlineLarge.copyWith(color: AppColors.lightTextPrimary),
      headlineMedium: AppTypography.headlineMedium.copyWith(color: AppColors.lightTextPrimary),
      headlineSmall: AppTypography.headlineSmall.copyWith(color: AppColors.lightTextPrimary),
      titleLarge: AppTypography.titleLarge.copyWith(color: AppColors.lightTextPrimary),
      titleMedium: AppTypography.titleMedium.copyWith(color: AppColors.lightTextPrimary),
      titleSmall: AppTypography.titleSmall.copyWith(color: AppColors.lightTextSecondary),
      bodyLarge: AppTypography.bodyLarge.copyWith(color: AppColors.lightTextPrimary),
      bodyMedium: AppTypography.bodyMedium.copyWith(color: AppColors.lightTextSecondary),
      bodySmall: AppTypography.bodySmall.copyWith(color: AppColors.lightTextTertiary),
      labelLarge: AppTypography.labelLarge.copyWith(color: AppColors.lightTextPrimary),
      labelMedium: AppTypography.labelMedium.copyWith(color: AppColors.lightTextSecondary),
      labelSmall: AppTypography.labelSmall.copyWith(color: AppColors.lightTextTertiary),
    );
  }

  static TextTheme darkTextTheme() {
    return TextTheme(
      displayLarge: AppTypography.displayLarge.copyWith(color: AppColors.darkTextPrimary),
      displayMedium: AppTypography.displayMedium.copyWith(color: AppColors.darkTextPrimary),
      displaySmall: AppTypography.displaySmall.copyWith(color: AppColors.darkTextPrimary),
      headlineLarge: AppTypography.headlineLarge.copyWith(color: AppColors.darkTextPrimary),
      headlineMedium: AppTypography.headlineMedium.copyWith(color: AppColors.darkTextPrimary),
      headlineSmall: AppTypography.headlineSmall.copyWith(color: AppColors.darkTextPrimary),
      titleLarge: AppTypography.titleLarge.copyWith(color: AppColors.darkTextPrimary),
      titleMedium: AppTypography.titleMedium.copyWith(color: AppColors.darkTextPrimary),
      titleSmall: AppTypography.titleSmall.copyWith(color: AppColors.darkTextSecondary),
      bodyLarge: AppTypography.bodyLarge.copyWith(color: AppColors.darkTextPrimary),
      bodyMedium: AppTypography.bodyMedium.copyWith(color: AppColors.darkTextSecondary),
      bodySmall: AppTypography.bodySmall.copyWith(color: AppColors.darkTextTertiary),
      labelLarge: AppTypography.labelLarge.copyWith(color: AppColors.darkTextPrimary),
      labelMedium: AppTypography.labelMedium.copyWith(color: AppColors.darkTextSecondary),
      labelSmall: AppTypography.labelSmall.copyWith(color: AppColors.darkTextTertiary),
    );
  }
}
