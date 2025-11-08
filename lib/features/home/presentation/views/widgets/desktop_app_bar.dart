import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/constants.dart';
import 'package:portfolio_ayhem_hamdi/core/services/navigation_service.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/custom_button.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';

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
                launchResume(link: Constants.resumeLink);
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
        _NavItem(
          title: "About Me",
          color: color,
          onPressed: () =>
              NavigationService().scrollToSection("about", context),
        ),
        _NavItem(
          title: "Skills",
          color: color,
          onPressed: () =>
              NavigationService().scrollToSection("skills", context),
        ),
        _NavItem(
          title: "Experience",
          color: color,
          onPressed: () =>
              NavigationService().scrollToSection("experience", context),
        ),
        _NavItem(
          title: "Projects",
          color: color,
          onPressed: () =>
              NavigationService().scrollToSection("projects", context),
        ),
        _NavItem(
          title: "Contact Me",
          color: color,
          onPressed: () =>
              NavigationService().scrollToSection("contact", context),
        ),
      ],
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.title,
    required this.color,
    required this.onPressed,
  });
  final String title;
  final Color color;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: AppStyles.style16SemiBold(context, color: color),
        ),
      ),
    );
  }
}

void launchResume({required String link}) {
  final websiteUri = Uri.parse(link);
  launchUrl(websiteUri, mode: LaunchMode.externalApplication);
}
