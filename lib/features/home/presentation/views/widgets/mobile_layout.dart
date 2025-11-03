import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/mobile_layout_welcome_section.dart';

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
          MySkillsTitle(),
          SliverGap(40),
        ],
      ),
    );
  }
}

class MySkillsTitle extends StatelessWidget {
  const MySkillsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "My",
              style: AppStyles.style28Regular(context, color: cs.primary),
            ),
            const Gap(16),
            Text(
              "Skills",
              style: AppStyles.style28ExtraBold(context, color: cs.primary),
            ),
          ],
        ),
      ),
    );
  }
}
