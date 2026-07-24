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
      locale: const Locale('fa', 'IR'),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
      home: const _PlaceholderHome(),
    );
  }
}

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
