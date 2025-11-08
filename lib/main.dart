import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio_ayhem_hamdi/core/dependency_injection.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/app_theme.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/home_screen.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/manager/email_send_cubit/email_send_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const PortfolioAyhemHamdi(),
    ),
  );
}

class PortfolioAyhemHamdi extends StatelessWidget {
  const PortfolioAyhemHamdi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<EmailSendCubit>(),
      child: MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: const HomeScreen(),
      ),
    );
  }
}
