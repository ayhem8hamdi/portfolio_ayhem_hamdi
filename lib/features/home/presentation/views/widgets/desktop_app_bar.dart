import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/custom_button.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

PreferredSizeWidget buildDesktopAppBar(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: 80,
    backgroundColor: Theme.of(context).colorScheme.secondary,
    surfaceTintColor: Theme.of(context).colorScheme.secondary,
    elevation: 0,
    titleSpacing: 0,
    title: Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: Row(
        children: [
          SvgPicture.asset(AppAssets.logo, height: 40),
          const Gap(12),
          Text(
            "Personal",
            style: AppStyles.style20Bold(
              context,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const Spacer(),
          const DesktopNavBar(),
          const Spacer(),
          SizedBox(
            height: 50,
            child: CustomButton(
              text: "Resume",
              hasIcon: true,
              onPressed: () {
                // TODO: Add your resume download or open link
              },
              icon: AppAssets.download,
            ),
          ),
        ],
      ),
    ),
  );
}

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Row(
      children: [
        _NavItem(title: "About Me", color: color),
        _NavItem(title: "Skills", color: color),
        _NavItem(title: "Experience", color: color),
        _NavItem(title: "Project", color: color),
        _NavItem(title: "Contact Me", color: color),
      ],
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({required this.title, required this.color});
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: () {
          // TODO: Add scroll or navigation logic
        },
        child: Text(
          title,
          style: AppStyles.style16SemiBold(context, color: color),
        ),
      ),
    );
  }
}
