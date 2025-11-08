import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.icon,
    this.hasIcon = false,
    this.onPressed,
  });

  final String text;
  final String? icon;
  final bool hasIcon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                text,
                style: AppStyles.style16SemiBold(
                  context,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
          if (hasIcon)
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: SvgPicture.asset(
                icon!,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.secondary,
                  BlendMode.srcIn,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class LoadingButton extends StatelessWidget {
  const LoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: null,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 43.5),
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Center(
                child: CircularProgressIndicator(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
