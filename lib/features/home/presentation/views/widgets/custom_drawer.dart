import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Drawer(
      backgroundColor: cs.secondary,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: CustomDrawerBody(),
        ),
      ),
    );
  }
}

class CustomDrawerBody extends StatelessWidget {
  const CustomDrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomDrawerHeader(),
        SliverGap(16),
        DrawerCustomDivider(),
        SliverGap(22),
        DrawerCustomNavLinks(),
        SliverGap(28),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: DownloadResumeButton(),
          ),
        ),
      ],
    );
  }
}

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            SvgPicture.asset(AppAssets.logo),
            Gap(12),
            Text(
              "Personal",
              style: AppStyles.style20Bold(context).copyWith(color: cs.primary),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.close, color: cs.primary),
            ),
            Gap(2),
          ],
        ),
      ),
    );
  }
}

class DrawerCustomDivider extends StatelessWidget {
  const DrawerCustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return SliverToBoxAdapter(
      child: Divider(color: cs.primary, thickness: 1, height: 1),
    );
  }
}

class DrawerCustomNavLinks extends StatelessWidget {
  const DrawerCustomNavLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HoverLinkText(text: "About me"),
            Gap(16),
            HoverLinkText(text: "Skills"),
            Gap(16),
            HoverLinkText(text: "Experience"),
            Gap(16),
            HoverLinkText(text: "Project"),
            Gap(16),
            HoverLinkText(text: "Contact me"),
          ],
        ),
      ),
    );
  }
}

class HoverLinkText extends StatelessWidget {
  const HoverLinkText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: AppStyles.style16SemiBold(context).copyWith(color: Colors.black),
      ),
    );
  }
}

class DownloadResumeButton extends StatelessWidget {
  const DownloadResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: cs.primary,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Resume",
                style: AppStyles.style16SemiBold(
                  context,
                ).copyWith(color: cs.onPrimary),
              ),
              Gap(8),
              SvgPicture.asset(
                AppAssets.download,
                colorFilter: ColorFilter.mode(cs.onPrimary, BlendMode.srcIn),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
