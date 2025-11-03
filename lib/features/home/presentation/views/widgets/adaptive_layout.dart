import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/size_config.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        log('constrains ${constrains.maxWidth}');
        log('media : ${MediaQuery.of(context).size.width}');
        if (constrains.maxWidth + 32 < SizeConfig.mobileBreakPoint) {
          return mobileLayout(context);
        } else if (constrains.maxWidth + 32 < SizeConfig.tabletBreakPoint) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
//1303