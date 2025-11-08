import 'package:flutter/material.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

class UiSnackbar {
  static void showError(BuildContext context, String message) {
    _showSnackbar(context, message, isError: true);
  }

  static void showSuccess(BuildContext context, String message) {
    _showSnackbar(context, message, isError: false);
  }

  /// Private helper method
  static void _showSnackbar(
    BuildContext context,
    String message, {
    required bool isError,
  }) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: AppStyles.style16SemiBold(context).copyWith(color: Colors.white),
      ),
      backgroundColor: Colors.black,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.04,
        vertical: 16,
      ),
      duration: const Duration(seconds: 3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
