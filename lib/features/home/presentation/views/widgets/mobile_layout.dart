import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/colors/app_colors.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';
import 'package:portfolio_ayhem_hamdi/features/home/domain/project_model.dart';
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
          MyProjectsSection(),
        ],
      ),
    );
  }
}

class MyProjectsSection extends StatelessWidget {
  const MyProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: AppColors.kPrimaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "My",
                  style: AppStyles.style28Regular(
                    context,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const Gap(16),
                Text(
                  "Projects",
                  style: AppStyles.style28ExtraBold(
                    context,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
            const Gap(40),
          ],
        ),
      ),
    );
  }
}

class MobileProjectDisplayWidget extends StatelessWidget {
  const MobileProjectDisplayWidget({
    super.key,
    required this.projectModel,
    required this.index,
  });

  final ProjectModel projectModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    final ColorScheme cs = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(19),
          child: Image.asset(projectModel.image, width: width),
        ),
        const Gap(28),
        Text(
          "0${index + 1}",
          style: AppStyles.style24ExtraBold(context, color: cs.secondary),
        ),
        const Gap(28),
        Text(
          projectModel.projectTitle,
          style: AppStyles.style20Bold(context, color: cs.secondary),
        ),
        const Gap(28),
        Text(
          projectModel.projectDecription,
          style: AppStyles.style16Regular(context, color: cs.onSurface),
        ),
        const Gap(28),
      ],
    );
  }
}
