import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/mobile_banner.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/mobile_social_contact_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/mobile_welcome_text.dart';

class MobileWelcomSection extends StatelessWidget {
  const MobileWelcomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MobileBanner(),
            const Gap(48),
            MobileLayoutWelcomeText(),
            const Gap(32),
            CustomContactIconsSection(),
          ],
        ),
      ),
    );
  }
}
