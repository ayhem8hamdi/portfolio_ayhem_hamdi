import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

class MobileLayoutWelcomeText extends StatelessWidget {
  const MobileLayoutWelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    return Padding(
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
          Gap(32),
          Text(
            "I am Ayhem Hamdi, a passionate Flutter developer from Tunisia, dedicated to building innovative and seamless mobile applications. My focus is on performance and user experience, bringing creative ideas to life with clean, efficient code. Let's build something extraordinary together.",
            style: AppStyles.style16Regular(
              context,
            ).copyWith(color: cs.tertiary),
          ),
        ],
      ),
    );
  }
}
