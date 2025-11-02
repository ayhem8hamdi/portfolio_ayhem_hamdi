import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

PreferredSizeWidget buildSmallScreenAppBar(BuildContext context) {
  return AppBar(
    toolbarHeight: 70,
    backgroundColor: Theme.of(context).colorScheme.secondary,
    surfaceTintColor: Theme.of(context).colorScheme.secondary,
    title: Row(
      children: [
        SvgPicture.asset(AppAssets.logo),
        const Gap(12),
        Text(
          "Personal",
          style: AppStyles.style20Bold(
            context,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    ),
    actions: [
      Builder(
        builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu, size: 32),
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
