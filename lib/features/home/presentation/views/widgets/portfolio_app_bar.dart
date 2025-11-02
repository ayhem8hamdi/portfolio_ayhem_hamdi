import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

PreferredSizeWidget buildSmallScreenAppBar(BuildContext context) {
  final cs = Theme.of(context).colorScheme;
  return AppBar(
    toolbarHeight: 70,
    backgroundColor: cs.secondary,
    surfaceTintColor: cs.secondary,
    title: Row(
      children: [
        SvgPicture.asset(AppAssets.logo),
        const Gap(12),
        Text(
          "Personal",
          style: AppStyles.style20Bold(context, color: cs.primary),
        ),
      ],
    ),
    actions: [
      Builder(
        builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu, size: 32, color: cs.primary),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          );
        },
      ),
      const Gap(8),
    ],
  );
}
