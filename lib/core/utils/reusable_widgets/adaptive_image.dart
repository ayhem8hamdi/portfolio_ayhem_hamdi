import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/size_config.dart';

class AdaptiveImage extends StatelessWidget {
  final String assetPath;
  final double imageDesignWidth;
  final double imageDesignAspectRatio;
  final Color? color;
  final double? maxWidth;
  final double? minWidth;
  final BoxFit fit;

  const AdaptiveImage({
    super.key,
    required this.assetPath,
    required this.imageDesignWidth,
    required this.imageDesignAspectRatio,
    this.color,
    this.maxWidth,
    this.minWidth,
    this.fit = BoxFit.contain,
  });

  double _getScaleFactor(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    if (width < SizeConfig.mobileBreakPoint) {
      return width / 825;
    } else if (width < SizeConfig.tabletBreakPoint) {
      return width / 1150;
    } else {
      return width / 1400;
    }
  }

  bool get _isSvg => assetPath.toLowerCase().endsWith('.svg');

  @override
  Widget build(BuildContext context) {
    final scaleFactor = _getScaleFactor(context);
    final scaledWidth = imageDesignWidth * scaleFactor;
    final clampedWidth = scaledWidth.clamp(
      minWidth ?? imageDesignWidth * 0.8,
      maxWidth ?? imageDesignWidth * 1.2,
    );

    return SizedBox(
      width: clampedWidth,
      child: AspectRatio(
        aspectRatio: imageDesignAspectRatio,
        child: _isSvg
            ? SvgPicture.asset(assetPath, fit: fit, color: color)
            : Image.asset(assetPath, fit: fit, color: color),
      ),
    );
  }
}
