import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Drawer(
      backgroundColor: cs.secondary,
      width: MediaQuery.sizeOf(context).width * 0.6,
      child: SafeArea(child: Column(children: [Text("ayhem"), Text("hamdi")])),
    );
  }
}
