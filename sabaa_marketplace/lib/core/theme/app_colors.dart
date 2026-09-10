import 'package:flutter/material.dart';

class AppColors {
  // Primary Brand Colors - SABAA Identity
  static const Color primaryNavy = Color(0xFF1A1F3A); // Dark navy for navigation
  static const Color primaryGold = Color(0xFFD4A574); // Warm gold accent

  // Secondary Colors
  static const Color secondaryTeal = Color(0xFF20B2AA);
  static const Color accentGold = Color(0xFFE8B863);

  // Neutrals - Light Mode
  static const Color lightBackground = Color(0xFFF8F9FA);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightBorder = Color(0xFFE8E8E8);
  static const Color lightTextPrimary = Color(0xFF2C2C2C);
  static const Color lightTextSecondary = Color(0xFF6B6B6B);
  static const Color lightTextTertiary = Color(0xFF9B9B9B);

  // Neutrals - Dark Mode
  static const Color darkBackground = Color(0xFF0F1419);
  static const Color darkSurface = Color(0xFF1A1F2E);
  static const Color darkBorder = Color(0xFF2A2F3E);
  static const Color darkTextPrimary = Color(0xFFF5F5F5);
  static const Color darkTextSecondary = Color(0xFFBBBBBB);
  static const Color darkTextTertiary = Color(0xFF808080);

  // Semantic Colors
  static const Color success = Color(0xFF2ECC71);
  static const Color error = Color(0xFFE74C3C);
  static const Color warning = Color(0xFFF39C12);
  static const Color info = Color(0xFF3498DB);

  // State Colors
  static const Color disabled = Color(0xFFCCCCCC);
  static const Color divider = Color(0xFFE0E0E0);

  // Transparent variants
  static const Color goldTransparent = Color(0x1FD4A574);
  static const Color navyTransparent = Color(0x1F1A1F3A);

  // Light theme colors map
  static const Map<String, Color> lightTheme = {
    'primary': primaryNavy,
    'accent': primaryGold,
    'background': lightBackground,
    'surface': lightSurface,
    'border': lightBorder,
    'textPrimary': lightTextPrimary,
    'textSecondary': lightTextSecondary,
    'textTertiary': lightTextTertiary,
    'success': success,
    'error': error,
    'warning': warning,
    'info': info,
  };

  // Dark theme colors map
  static const Map<String, Color> darkTheme = {
    'primary': primaryNavy,
    'accent': accentGold,
    'background': darkBackground,
    'surface': darkSurface,
    'border': darkBorder,
    'textPrimary': darkTextPrimary,
    'textSecondary': darkTextSecondary,
    'textTertiary': darkTextTertiary,
    'success': success,
    'error': error,
    'warning': warning,
    'info': info,
  };
}
