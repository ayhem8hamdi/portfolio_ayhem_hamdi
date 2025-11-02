import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/mobile_layout_welcome_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(slivers: [SliverGap(40), MobileWelcomSection()]),
    );
  }
}
