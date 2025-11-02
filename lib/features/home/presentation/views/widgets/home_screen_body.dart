import 'package:flutter/material.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/adaptive_layout.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/desktop_layout.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/mobile_layout.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/tablet_layout.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutWidget(
      mobileLayout: (context) => const MobileLayout(),
      tabletLayout: (context) => const TabletLayout(),
      desktopLayout: (context) => const DesktopLayout(),
    );
  }
}
