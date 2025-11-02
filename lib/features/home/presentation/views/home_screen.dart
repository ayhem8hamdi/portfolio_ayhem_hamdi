import 'package:flutter/material.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/size_config.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/home_screen_body.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/portfolio_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: width > SizeConfig.pcBreakPoint
          ? null
          : buildSmallScreenAppBar(context),
      endDrawer: width < SizeConfig.pcBreakPoint ? const CustomDrawer() : null,
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: HomeScreenBody(),
      ),
    );
  }
}
