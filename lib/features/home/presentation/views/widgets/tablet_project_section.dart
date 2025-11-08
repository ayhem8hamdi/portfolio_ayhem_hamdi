import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/constants.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/colors/app_colors.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';
import 'package:portfolio_ayhem_hamdi/features/home/domain/project_model.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/project_links.dart';

class TabletMyProjectsSection extends StatelessWidget {
  const TabletMyProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    final double width = MediaQuery.sizeOf(context).width;
    return SliverToBoxAdapter(
      child: Container(
        color: AppColors.kPrimaryColor,
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          children: [
            const Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "My",
                  style: AppStyles.style48Regular(context, color: cs.secondary),
                ),
                Gap(12),
                Text(
                  "Projects",
                  style: AppStyles.style48ExtraBold(
                    context,
                    color: cs.secondary,
                  ),
                ),
              ],
            ),
            const Gap(64),
            TabletProjectsListBuilder(),
          ],
        ),
      ),
    );
  }
}

class TabletProjectsListBuilder extends StatelessWidget {
  const TabletProjectsListBuilder({super.key});
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
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 65),
        child: TabletProjectItem(projectModel: l[index], index: index + 1),
      ),
    );
  }
}

class TabletProjectItem extends StatelessWidget {
  const TabletProjectItem({
    super.key,
    required this.projectModel,
    required this.index,
  });
  final ProjectModel projectModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: index % 2 != 0
                ? ProjectImage(projectModel: projectModel)
                : ProjectInfo(index: index, cs: cs, projectModel: projectModel),
          ),
          const Gap(45),
          Expanded(
            flex: 1,
            child: index % 2 != 0
                ? ProjectInfo(index: index, cs: cs, projectModel: projectModel)
                : ProjectImage(projectModel: projectModel),
          ),
        ],
      ),
    );
  }
}

class ProjectInfo extends StatelessWidget {
  const ProjectInfo({
    super.key,
    required this.index,
    required this.cs,
    required this.projectModel,
  });

  final int index;
  final ColorScheme cs;
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectName(index: index, cs: cs, projectModel: projectModel),
        const Gap(19),
        ProjectDesc(projectModel: projectModel, cs: cs),
        const Gap(23),
        ProjectLinks(projectModel: projectModel),
      ],
    );
  }
}

class ProjectImage extends StatelessWidget {
  const ProjectImage({super.key, required this.projectModel});

  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(19),
      child: Image.asset(projectModel.image),
    );
  }
}

class ProjectDesc extends StatelessWidget {
  const ProjectDesc({super.key, required this.projectModel, required this.cs});

  final ProjectModel projectModel;
  final ColorScheme cs;

  @override
  Widget build(BuildContext context) {
    return Text(
      projectModel.projectDecription,
      style: AppStyles.style16Regular(context, color: cs.onSurface),
    );
  }
}

class ProjectName extends StatelessWidget {
  const ProjectName({
    super.key,
    required this.index,
    required this.cs,
    required this.projectModel,
  });

  final int index;
  final ColorScheme cs;
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          index >= 10 ? "$index" : "0$index",
          style: AppStyles.style48ExtraBold(context, color: cs.secondary),
        ),
        const Gap(22),
        Text(
          projectModel.projectTitle,
          style: AppStyles.style32Bold(context, color: cs.secondary),
        ),
      ],
    );
  }
}
