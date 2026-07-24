import 'package:flutter/material.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const CheraghApp());
}

class CheraghApp extends StatelessWidget {
  const CheraghApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'چراغ',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,

      // پشتیبانی از راست‌به‌چپ (فارسی)
      locale: const Locale('fa', 'IR'),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },

      // فعلاً یه صفحه موقت — به‌محض ساخته شدن صفحه ورود/داشبورد
      // اینجا با routes جایگزین می‌شه.
      home: const _PlaceholderHome(),
    );
  }
}

/// صفحه موقت فقط برای تست اینکه تم درست کار می‌کنه
class _PlaceholderHome extends StatelessWidget {
  const _PlaceholderHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('چراغ')),
      body: Center(
        child: Text(
          'زیرساخت آماده‌ست ✅\nصفحه بعدی: ورود / ثبت‌نام',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
