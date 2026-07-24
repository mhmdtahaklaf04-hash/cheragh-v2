import 'package:flutter/material.dart';

/// فایل تم مرکزی اپلیکیشن چراغ
/// همه رنگ‌ها، فونت‌ها و استایل‌های اپ از همین فایل خونده می‌شن.
/// اگه بعداً خواستی رنگ یا فونت رو عوض کنی، فقط همینجا تغییر بده،
/// نیازی نیست تو صفحات دیگه دستی رنگ بدی.

class AppColors {
  // رنگ اصلی: سبز تیره (هویت هیئت)
  static const Color primaryGreen = Color(0xFF0B3D2E);
  static const Color primaryGreenLight = Color(0xFF145C41);
  static const Color primaryGreenDark = Color(0xFF072A20);

  // رنگ طلایی (تزئینی و تاکیدی)
  static const Color gold = Color(0xFFD4AF37);
  static const Color goldLight = Color(0xFFE6C75C);

  // رنگ‌های پس‌زمینه و متن
  static const Color background = Color(0xFFF7F5F0);
  static const Color surface = Colors.white;
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF6B6B6B);
  static const Color textOnPrimary = Colors.white;

  // رنگ‌های وضعیت
  static const Color error = Color(0xFFB3261E);
  static const Color success = Color(0xFF2E7D32);
  static const Color comingSoon = Color(0xFF9E9E9E);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Vazirmatn',
      scaffoldBackgroundColor: AppColors.background,

      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryGreen,
        primary: AppColors.primaryGreen,
        secondary: AppColors.gold,
        surface: AppColors.surface,
        error: AppColors.error,
        brightness: Brightness.light,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primaryGreen,
        foregroundColor: AppColors.textOnPrimary,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.textOnPrimary,
        ),
      ),

      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
        titleMedium: TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 15,
          color: AppColors.textPrimary,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Vazirmatn',
          fontSize: 13,
          color: AppColors.textSecondary,
        ),
      ),

      cardTheme: CardThemeData(
        color: AppColors.surface,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryGreen,
          foregroundColor: AppColors.textOnPrimary,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontFamily: 'Vazirmatn',
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.gold, width: 1.5),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
    );
  }
}

/// استایل‌های تزئینی که در چند صفحه تکرار می‌شن
class AppDecorations {
  static BoxDecoration get goldBorderCard => BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.gold.withOpacity(0.4), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      );

  static BoxDecoration get primaryGradient => const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.primaryGreenDark, AppColors.primaryGreen],
        ),
      );
}
