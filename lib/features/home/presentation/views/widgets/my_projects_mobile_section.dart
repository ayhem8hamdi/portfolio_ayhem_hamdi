import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/constants.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/colors/app_colors.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';
import 'package:portfolio_ayhem_hamdi/features/home/domain/project_model.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/project_links.dart';

class MyProjectsSection extends StatelessWidget {
  const MyProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return SliverToBoxAdapter(
      child: Container(
        color: AppColors.kPrimaryColor,
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
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
            MobileProjectsListBuilder(),
          ],
        ),
      ),
    );
  }
}

class MobileProjectsListBuilder extends StatelessWidget {
  const MobileProjectsListBuilder({super.key});
  static final List<ProjectModel> l = [
    Constants.projet1,
    Constants.projet2,
    Constants.project3,
    Constants.project4,
    Constants.project5,
    Constants.project6,
    Constants.project7,
    Constants.project8,
    Constants.project9,
    Constants.project10,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: l.length,
      itemBuilder: (context, index) =>
          MobileProjectDisplayWidget(projectModel: l[index], index: index),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                index >= 9 ? "${index + 1}" : "0${index + 1}",
                style: AppStyles.style24ExtraBold(context, color: cs.secondary),
              ),
              const Gap(16),
              Text(
                projectModel.projectTitle,
                style: AppStyles.style24SemiBold(
                  context,
                  color: cs.secondary,
                ).copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Gap(28),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(projectModel.image, width: width),
        ),

        const Gap(28),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            projectModel.projectDecription,
            style: AppStyles.style16Regular(context, color: cs.onSurface),
          ),
        ),
        const Gap(28),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ProjectLinks(projectModel: projectModel),
        ),
        const Gap(28),
      ],
    );
  }
}
