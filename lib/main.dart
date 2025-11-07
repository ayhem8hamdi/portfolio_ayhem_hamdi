import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/app_theme.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const PortfolioAyhemHamdi(),
    ),
  );
}

class PortfolioAyhemHamdi extends StatelessWidget {
  const PortfolioAyhemHamdi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}
