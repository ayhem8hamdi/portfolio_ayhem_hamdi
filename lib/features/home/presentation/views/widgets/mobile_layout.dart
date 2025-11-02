import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverGap(40),
          MobileBanner(),
          const SliverGap(48),
          MobileLayoutWelcomeText(),
        ],
      ),
    );
  }
}

class MobileBanner extends StatelessWidget {
  const MobileBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: AspectRatio(
          aspectRatio: width / 450,
          child: SvgPicture.asset(AppAssets.mobileBanner),
        ),
      ),
    );
  }
}

class MobileLayoutWelcomeText extends StatelessWidget {
  const MobileLayoutWelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello I'am",
                  style: AppStyles.style28Regular(context, color: cs.primary),
                ),
                const Gap(16),
                Text(
                  "Ayhem Hamdi.",
                  style: AppStyles.style28ExtraBold(context, color: cs.primary),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Flutter",
                  style: AppStyles.style28ExtraBold(context, color: cs.primary),
                ),
                const Gap(16),
                Stack(
                  children: <Widget>[
                    // Stroked text as border.
                    Text(
                      'Developer',
                      style: AppStyles.style28ExtraBold(context).copyWith(
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 4.8
                          ..color = cs.primary,
                      ),
                    ),
                    // Solid text as fill.
                    Text(
                      'Developer',
                      style: AppStyles.style28ExtraBold(
                        context,
                        color: cs.secondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Based In",
                  style: AppStyles.style28Regular(context, color: cs.primary),
                ),
                const Gap(12),
                Text(
                  "Tunisia.",
                  style: AppStyles.style28ExtraBold(context, color: cs.primary),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
