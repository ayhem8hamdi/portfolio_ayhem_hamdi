import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/features/home/domain/skill_model.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/skills_section.dart';

class TabletSkillsSection extends StatelessWidget {
  const TabletSkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(children: [MySkillsTitle(), Gap(50), TabletSkillGrid()]),
      ),
    );
  }
}

class TabletSkillGrid extends StatelessWidget {
  const TabletSkillGrid({super.key});
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
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
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
