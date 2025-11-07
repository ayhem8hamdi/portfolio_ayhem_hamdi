import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SliverToBoxAdapter(
      child: Container(
        height: 85,
        color: Theme.of(context).colorScheme.primary,
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Row(
          children: [
            SvgPicture.asset(
              AppAssets.logo,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.secondary,
                BlendMode.srcIn,
              ),
            ),
            const Gap(7),
            Text(
              "Personal",
              style: AppStyles.style20Bold(
                context,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "© 2025 Ayhem Hamdi",
                  style: AppStyles.style16SemiBold(
                    context,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const Gap(10),
                Row(
                  children: [
                    Text(
                      "Made with Flutter by ",
                      style: AppStyles.style16SemiBold(
                        context,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    const Icon(Icons.favorite, color: Colors.red),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
