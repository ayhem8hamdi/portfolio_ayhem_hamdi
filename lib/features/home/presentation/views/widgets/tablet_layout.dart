import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/keys.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/footer_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/tablet_about_me.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/tablet_contact_me_section.dart';
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
          TabletSkillsSection(key: skillsKey),
          SliverGap(80),
          TabletMyExperiencesSection(key: experienceKey),
          SliverGap(85),
          TabletAboutMe(key: aboutMeKey),
          SliverGap(80),
          TabletMyProjectsSection(key: projectsKey),
          SliverGap(80),
          TabletContactMeSection(key: contactKey),
          SliverGap(90),
          FooterSection(),
        ],
      ),
    );
  }
}
