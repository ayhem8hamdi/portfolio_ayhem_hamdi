import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/constants.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    final double width = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
      child: Container(
        color: cs.secondary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width,
              child: SvgPicture.asset(AppAssets.mobileAboutMe),
            ),
            const Gap(25),
            AppTitles(firsWord: "About", secondWord: "Me"),
            Gap(20),
            Text(
              Constants.aboutMeText,
              style: AppStyles.style16Regular(context, color: cs.tertiary),
            ),
          ],
        ),
      ),
    );
  }
}

class AppTitles extends StatelessWidget {
  const AppTitles({
    super.key,
    required this.firsWord,
    required this.secondWord,
  });
  final String firsWord, secondWord;
  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    return Row(
      children: [
        Text(
          firsWord,
          style: AppStyles.style28Regular(context, color: cs.primary),
        ),
        const Gap(16),
        Text(
          secondWord,
          style: AppStyles.style28ExtraBold(context, color: cs.primary),
        ),
        const Gap(20),
      ],
    );
  }
}
