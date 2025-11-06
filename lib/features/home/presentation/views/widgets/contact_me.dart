import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Let's",
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
                  'Talk',
                  style: AppStyles.style48ExtraBold(context).copyWith(
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Theme.of(context).colorScheme.primary,
                  ),
                ),
                // Solid text as fill.
                Text(
                  'Talk',
                  style: AppStyles.style48ExtraBold(
                    context,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
            const Gap(16),
            Text(
              "for",
              style: AppStyles.style48ExtraBold(
                context,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        Text(
          "Something special",
          style: AppStyles.style48ExtraBold(
            context,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const Gap(12),
        Text(
          "I craft sleek, high-performance mobile apps with Flutter and develop powerful web solutions using Node.js and the MEN stack. Passionate about AI, I am always open to exciting collaboration opportunities.",
          style: AppStyles.style16Regular(
            context,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        const Gap(30),
        Text(
          "ayhemhamdi46@gmail.com",
          style: AppStyles.style28SemiBold(
            context,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const Gap(12),
        Text(
          "+216 51033763",
          style: AppStyles.style28SemiBold(
            context,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 76),
      ],
    );
  }
}
