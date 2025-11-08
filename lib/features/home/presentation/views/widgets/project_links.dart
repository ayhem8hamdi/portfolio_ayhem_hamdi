import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/features/home/domain/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectLinks extends StatelessWidget {
  const ProjectLinks({super.key, required this.projectModel});

  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        projectModel.githubLink != null
            ? MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    final websiteUri = Uri.parse(projectModel.githubLink!);
                    launchUrl(websiteUri, mode: LaunchMode.externalApplication);
                  },
                  child: SvgPicture.asset(
                    AppAssets.github,
                    width: 20,
                    height: 20,
                  ),
                ),
              )
            : const SizedBox(),
        const Gap(12),
        projectModel.linkedinLink != null
            ? MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    final websiteUri = Uri.parse(projectModel.linkedinLink!);
                    launchUrl(websiteUri, mode: LaunchMode.externalApplication);
                  },
                  child: SvgPicture.asset(
                    AppAssets.linkedIn,
                    width: 20,
                    height: 20,
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
