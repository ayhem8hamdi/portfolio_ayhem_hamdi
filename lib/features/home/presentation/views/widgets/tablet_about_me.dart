import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/about_me_section.dart';

class TabletAboutMe extends StatelessWidget {
  const TabletAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final ColorScheme cs = Theme.of(context).colorScheme;

    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: AspectRatio(
                aspectRatio: 1,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppAssets.aboutMe,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const Gap(45),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(35),
                    const AppTitles(firsWord: "About", secondWord: "Me"),
                    const Gap(25),
                    Text(
                      "I am Ayhem Hamdi, a Computer Science student at the Higher Institute of Computer Science Ariana. I began my development journey in June 2024, earning a Udemy certificate in Dart OOP and Flutter initiation. Since then, I have been actively working on various projects both personal and collaborative using Firebase and Supabase. Alongside Flutter development, I expanded my skills to include backend and API development using Node.js and Express, as well as learning the MEN stack (without React). I’m passionate about clean architecture, BLoC state management, and eager to take on new projects that challenge and grow my technical expertise.",
                      style: AppStyles.style16Regular(
                        context,
                        color: cs.tertiary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
