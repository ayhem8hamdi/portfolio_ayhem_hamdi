import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/adaptive_image.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';
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
        ],
      ),
    );
  }
}

class MyExperiencesSection extends StatelessWidget {
  const MyExperiencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    return SliverToBoxAdapter(
      child: Container(
        color: cs.primary,
        child: Column(
          children: [
            Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("My", style: AppStyles.style28Regular(context)),
                Gap(12),
                Text("Experience", style: AppStyles.style28ExtraBold(context)),
              ],
            ),
            Gap(40),
            ExperienceItem(color: Colors.black),
          ],
        ),
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: cs.onSurface),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AdaptiveImage(
                  assetPath: AppAssets.freelance,
                  imageDesignWidth: 32,
                  imageDesignAspectRatio: 1,
                ),
                Gap(16),
                Text(
                  "Independent Freelancer",
                  style: AppStyles.style24SemiBold(context),
                ),
              ],
            ),
            Gap(20),
            Text("2024-present", style: AppStyles.style16SemiBold(context)),
          ],
        ),
      ),
    );
  }
}
