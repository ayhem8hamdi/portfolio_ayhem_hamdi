import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/adaptive_image.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';
import 'package:portfolio_ayhem_hamdi/features/home/domain/skill_model.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [MySkillsTitle(), Gap(40), SkillGrid()]),
      ),
    );
  }
}

class SkillGrid extends StatelessWidget {
  const SkillGrid({super.key});
  static final List<SkillModel> l = [
    SkillModel(skillImage: AppAssets.dart, skillName: "Dart"),
    SkillModel(skillImage: AppAssets.flutter, skillName: "Flutter"),
    SkillModel(skillImage: AppAssets.cubit, skillName: "Cubit"),
    SkillModel(skillImage: AppAssets.android, skillName: "Android"),
    SkillModel(skillImage: AppAssets.supabase, skillName: "Supabase"),
    SkillModel(skillImage: AppAssets.firebase, skillName: "Firebase"),
    SkillModel(skillImage: AppAssets.git, skillName: "Git"),
    SkillModel(skillImage: AppAssets.js, skillName: "JavaScript"),
    SkillModel(skillImage: AppAssets.nodeJs, skillName: "NodeJS"),
    SkillModel(skillImage: AppAssets.mongoDb, skillName: "MongoDB"),
    SkillModel(skillImage: AppAssets.expressJs, skillName: "Express JS"),
    SkillModel(skillImage: AppAssets.swagger, skillName: "Swagger"),
    SkillModel(skillImage: AppAssets.java, skillName: "Java"),
  ];

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return GridView.builder(
      shrinkWrap: true, // 👈 necessary inside Column
      physics:
          const NeverScrollableScrollPhysics(), // 👈 prevents nested scroll
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: width <= 500 ? 2 : 3,
        crossAxisSpacing: width * 0.03,
        mainAxisSpacing: width * 0.03,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return SkillItem(skillModel: l[index]);
      },
      itemCount: l.length,
    );
  }
}

class MySkillsTitle extends StatelessWidget {
  const MySkillsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "My",
            style: AppStyles.style48Regular(context, color: cs.primary),
          ),
          const Gap(11),
          Text(
            "Skills",
            style: AppStyles.style48ExtraBold(context, color: cs.primary),
          ),
        ],
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  const SkillItem({super.key, required this.skillModel});
  final SkillModel skillModel;

  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: cs.secondary,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: cs.primary),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AdaptiveImage(
            color: cs.primary,
            assetPath: skillModel.skillImage,
            imageDesignWidth: 64,
            imageDesignAspectRatio: 1,
          ),
          Flexible(child: Gap(26)),
          Text(
            skillModel.skillName,
            style: AppStyles.style20Bold(context).copyWith(color: cs.primary),
          ),
        ],
      ),
    );
  }
}
