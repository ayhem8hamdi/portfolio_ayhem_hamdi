import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
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
            AboutMeTitle(),
            Gap(20),
            Text(
              "I am Ayhem Hamdi, a Computer Science student at the Higher Institute of Computer Science Ariana. I began my development journey in June 2024, earning a Udemy certificate in Dart OOP and Flutter initiation. Since then, I have been actively working on various projects both personal and collaborative using Firebase, Supabase. Alongside Flutter development, I expanded my skills to include backend and API development using Node.js and Express, as well as learning the MERN stack (without React). I am passionate about continuously improving my expertise in clean architecture and BLoC state management, and I am always eager to take on new projects that allow me to apply and grow my technical knowledge.",
              style: AppStyles.style16Regular(context, color: cs.tertiary),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutMeTitle extends StatelessWidget {
  const AboutMeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    return Row(
      children: [
        Text(
          "About",
          style: AppStyles.style28Regular(context, color: cs.primary),
        ),
        const Gap(16),
        Text(
          "Me",
          style: AppStyles.style28ExtraBold(context, color: cs.primary),
        ),
        const Gap(20),
      ],
    );
  }
}
