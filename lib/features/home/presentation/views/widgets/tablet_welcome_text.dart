import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/constants.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

class TabletWelcomeText extends StatelessWidget {
  const TabletWelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello I'am",
              style: AppStyles.style48Regular(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const Gap(16),
            Text(
              Constants.fullName,
              style: AppStyles.style48ExtraBold(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              Constants.mainFrameWork,
              style: AppStyles.style48ExtraBold(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const Gap(16),
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  Constants.state,
                  style: AppStyles.style48ExtraBold(context).copyWith(
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Theme.of(context).colorScheme.primary,
                  ),
                ),
                // Solid text as fill.
                Text(
                  Constants.state,
                  style: AppStyles.style48ExtraBold(
                    context,
                    color: Theme.of(context).colorScheme.secondary,
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
              style: AppStyles.style48Regular(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const Gap(16),
            Text(
              Constants.nationality,
              style: AppStyles.style48ExtraBold(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
