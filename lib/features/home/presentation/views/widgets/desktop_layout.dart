import 'package:flutter/material.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          "Desktop layout",
          style: AppStyles.style20Bold(
            context,
          ).copyWith(color: Color(0XFF000000)),
        ),
      ),
    );
  }
}
