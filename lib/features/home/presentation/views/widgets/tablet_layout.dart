import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/tablet_about_me.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/tablet_my_experience_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/tablet_project_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/tablet_skills_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/tablet_welcome_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverGap(40),
          TabletWelcomeSection(),
          SliverGap(70),
          TabletSkillsSection(),
          SliverGap(80),
          TabletMyExperiencesSection(),
          SliverGap(85),
          TabletAboutMe(),
          SliverGap(80),
          TabletMyProjectsSection(),
        ],
      ),
    );
  }
}
