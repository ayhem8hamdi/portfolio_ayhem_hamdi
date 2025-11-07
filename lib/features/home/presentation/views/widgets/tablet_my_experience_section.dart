import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/adaptive_image.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/colors/app_colors.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';
import 'package:portfolio_ayhem_hamdi/features/home/domain/experience_model.dart';

class TabletMyExperiencesSection extends StatelessWidget {
  const TabletMyExperiencesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    return SliverToBoxAdapter(
      child: Container(
        color: cs.primary,
        child: Column(
          children: [
            Gap(64),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "My",
                  style: AppStyles.style48Regular(context, color: cs.secondary),
                ),
                Gap(12),
                Text(
                  "Experience",
                  style: AppStyles.style48ExtraBold(
                    context,
                    color: cs.secondary,
                  ),
                ),
              ],
            ),
            Gap(64),
            TabletExperienceListBuilder(),
            Gap(35),
          ],
        ),
      ),
    );
  }
}

class TabletExperienceListBuilder extends StatelessWidget {
  const TabletExperienceListBuilder({super.key});
  static final List<ExperienceModel> l = [
    ExperienceModel(
      image: AppAssets.freelance,
      expTitle: "Independent Freelancer",
      expDesc:
          "In 2024, I began my freelance journey, working with clients worldwide to bring their ideas to life. I develop mobile apps and custom solutions across various categories, with a steadfast focus on quality, functionality, and user experience. My passion is creating impactful applications that consistently exceed expectations.",
      color: AppColors.kPrimaryColor,
      expDate: "2024-Present",
    ),
    ExperienceModel(
      image: AppAssets.codexLogo2,
      expTitle: "Flutter Senior",
      expDesc:
          "In 2024, I began my freelance journey, working with clients worldwide to bring their ideas to life. I develop mobile apps and custom solutions across various categories, with a steadfast focus on quality, functionality, and user experience. My passion is creating impactful applications that consistently exceed expectations.",
      color: AppColors.kPrimaryColor,
      expDate: "2024-Present",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          TabletExperienceItem(experienceModel: l[index]),
      itemCount: l.length,
    );
  }
}

class TabletExperienceItem extends StatelessWidget {
  const TabletExperienceItem({super.key, required this.experienceModel});
  final ExperienceModel experienceModel;
  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    final double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: Container(
        margin: EdgeInsets.only(bottom: 30),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        decoration: BoxDecoration(
          color: experienceModel.color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: cs.onSurface),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AdaptiveImage(
                  assetPath: experienceModel.image,
                  imageDesignWidth: 32,

                  imageDesignAspectRatio: 1,
                ),
                Gap(16),
                Text(
                  experienceModel.expTitle,

                  style: AppStyles.style24SemiBold(
                    context,
                  ).copyWith(color: cs.secondary),
                ),
                Spacer(),
                Text(
                  experienceModel.expDate,

                  style: AppStyles.style16SemiBold(
                    context,
                  ).copyWith(color: cs.onSurface),
                ),
              ],
            ),

            Gap(26),
            Text(
              experienceModel.expDesc,

              style: AppStyles.style16Regular(
                context,
              ).copyWith(color: cs.onSurface),
            ),
          ],
        ),
      ),
    );
  }
}
