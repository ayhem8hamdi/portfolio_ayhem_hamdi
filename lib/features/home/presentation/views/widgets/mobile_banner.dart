import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';

class MobileBanner extends StatelessWidget {
  const MobileBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AspectRatio(
        aspectRatio: width / 450,
        child: SvgPicture.asset(AppAssets.mobileBanner),
      ),
    );
  }
}
