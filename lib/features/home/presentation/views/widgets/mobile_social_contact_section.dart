import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/constants.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomContactIconsSection extends StatelessWidget {
  const CustomContactIconsSection({super.key, this.padding});
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 16),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: FittedBox(
              alignment: Alignment.centerLeft,
              fit: BoxFit.scaleDown,
              child: CustomContactIconRow(),
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}

class CustomContactIconRow extends StatelessWidget {
  const CustomContactIconRow({super.key, this.gap});
  final double? gap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: SocialMediaIcon(
            image: AppAssets.linkedIn,
            onTap: () =>
                socialMediaRedirectMethod(link: Constants.linkedInProfile),
          ),
        ),
        Gap(gap ?? 32),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: SocialMediaIcon(
            image: AppAssets.github,
            onTap: () =>
                socialMediaRedirectMethod(link: Constants.githubProfile),
          ),
        ),
        Gap(gap ?? 32),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: SocialMediaIcon(
            image: AppAssets.facebook,
            onTap: () =>
                socialMediaRedirectMethod(link: Constants.facebookProfile),
          ),
        ),
        Gap(gap ?? 32),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: SocialMediaIcon(
            image: AppAssets.instagram,
            onTap: () =>
                socialMediaRedirectMethod(link: Constants.instagramProfile),
          ),
        ),
      ],
    );
  }

  void socialMediaRedirectMethod({required String link}) {
    final websiteUri = Uri.parse(link);
    launchUrl(websiteUri, mode: LaunchMode.platformDefault);
  }
}

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({super.key, required this.image, this.onTap});
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: cs.primary, width: 2),
          color: cs.secondary,
        ),
        child: Center(
          child: SvgPicture.asset(
            image,
            width: 23,
            height: 23,
            color: cs.primary,
          ),
        ),
      ),
    );
  }
}
