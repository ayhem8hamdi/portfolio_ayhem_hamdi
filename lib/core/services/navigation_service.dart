// lib/core/utils/navigation/navigation_service.dart
import 'package:flutter/material.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/keys.dart';

class NavigationService {
  static final NavigationService _instance = NavigationService._internal();
  factory NavigationService() => _instance;
  NavigationService._internal();

  final Map<String, GlobalKey> sectionKeys = {
    'about': aboutMeKey,
    'skills': skillsKey,
    'experience': experienceKey,
    'projects': projectsKey,
    'contact': contactKey,
  };

  void scrollToSection(String sectionName, BuildContext context) {
    final key = sectionKeys[sectionName.toLowerCase()];
    if (key != null && key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        alignment: 0,
      );
      // Close drawer after navigation
      if (Scaffold.of(context).isDrawerOpen ||
          Scaffold.of(context).isEndDrawerOpen) {
        Navigator.pop(context);
      }
    }
  }
}
