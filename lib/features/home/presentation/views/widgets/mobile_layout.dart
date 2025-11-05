import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/about_me_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/experience_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/mobile_layout_welcome_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/skills_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverGap(40),
          MobileWelcomSection(),
          SliverGap(60),
          SkillsSection(),
          SliverGap(40),
          MyExperiencesSection(),
          AboutMeSection(),
          SliverGap(40),
        ],
      ),
    );
  }
}
