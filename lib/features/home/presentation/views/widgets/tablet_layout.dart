import 'package:flutter/material.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "tablet layout",
        style: AppStyles.style20ExtraBold(
          context,
        ).copyWith(color: Color(0XFF000000)),
      ),
    );
  }
}
