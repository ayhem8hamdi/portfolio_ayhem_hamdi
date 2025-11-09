import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/constants.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

class MobileLayoutWelcomeText extends StatelessWidget {
  const MobileLayoutWelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello I am",
                  style: AppStyles.style28Regular(context, color: cs.primary),
                ),
                const Gap(16),
                Text(
                  Constants.fullName,
                  style: AppStyles.style28ExtraBold(context, color: cs.primary),
                ),
              ],
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Text(
                  Constants.mainFrameWork,
                  style: AppStyles.style28ExtraBold(context, color: cs.primary),
                ),
                const Gap(16),
                Stack(
                  children: <Widget>[
                    Text(
                      Constants.state,
                      style: AppStyles.style28ExtraBold(context).copyWith(
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 4.8
                          ..color = cs.primary,
                      ),
                    ),
                    Text(
                      Constants.state,
                      style: AppStyles.style28ExtraBold(
                        context,
                        color: cs.secondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Based In",
                  style: AppStyles.style28Regular(context, color: cs.primary),
                ),
                const Gap(12),
                Text(
                  Constants.nationality,
                  style: AppStyles.style28ExtraBold(context, color: cs.primary),
                ),
              ],
            ),
          ),
          const Gap(32),
          Text(
            Constants.welcomeSectionIntroducition,
            style: AppStyles.style16Regular(
              context,
            ).copyWith(color: cs.tertiary),
          ),
        ],
      ),
    );
  }
}
