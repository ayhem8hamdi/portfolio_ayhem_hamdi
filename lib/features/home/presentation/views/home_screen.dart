import 'package:flutter/material.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/size_config.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/desktop_app_bar.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/home_screen_body.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/portfolio_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    print(
      'Width: $width | Drawer: ${width >= SizeConfig.pcBreakPoint ? 'none' : 'active'}',
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: width >= SizeConfig.tabletBreakPoint
          ? buildDesktopAppBar(context)
          : buildSmallScreenAppBar(context),
      endDrawer: width < SizeConfig.tabletBreakPoint
          ? const CustomDrawer()
          : null,
      body: HomeScreenBody(),
    );
  }
}
