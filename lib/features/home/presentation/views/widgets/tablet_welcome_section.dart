import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/mobile_social_contact_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/tablet_welcome_text.dart';

class TabletWelcomeSection extends StatelessWidget {
  const TabletWelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: IntrinsicWidth(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: TabletWelcomeText(),
                    ),
                    const Gap(18),
                    Text(
                      "I am Ayhem Hamdi, a passionate Flutter developer from Tunisia, dedicated to building innovative and seamless mobile applications. My focus is on performance and user experience, bringing creative ideas to life with clean, efficient code. Let's build something extraordinary together.",
                      style: AppStyles.style16Regular(
                        context,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                    const Gap(22),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: CustomContactIconRow(),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Gap(25),
            Expanded(child: Image.asset(AppAssets.banner)),
          ],
        ),
      ),
    );
  }
}
