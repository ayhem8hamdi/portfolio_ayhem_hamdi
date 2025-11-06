import 'package:flutter/material.dart';

abstract class MethodsHelper {
  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Please enter your name";
    }
    if (value.length < 3) {
      return "Name must be at least 3 characters long";
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email adress';
    }
    return null;
  }

  static String? validateSubject(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a subject";
    }
    return null;
  }

  static String? validateHelp(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter a message";
    }
    if (value.length < 10) {
      return "Message must be at least 10 characters long";
    }
    return null;
  }

  static InputBorder buildBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.primary,
        width: 1.0,
      ),
    );
  }

  static InputBorder buildErrorBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.error,
        width: 1.0,
      ),
    );
  }
}
