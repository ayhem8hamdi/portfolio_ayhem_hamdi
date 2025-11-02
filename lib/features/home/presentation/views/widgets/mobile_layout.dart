import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [SliverGap(40), MobileBanner(), const SliverGap(48)],
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
      child: AspectRatio(
        aspectRatio: width / 450,
        child: SvgPicture.asset(AppAssets.mobileBanner),
      ),
    );
  }
}
