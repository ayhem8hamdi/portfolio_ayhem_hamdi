import 'package:flutter/material.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/methods_helper.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.validator,
    required this.controller,
  });

  final String hint;
  final String? Function(String?)? validator;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return TextFormField(
      validator: validator,
      controller: controller,
      style: AppStyles.style16Regular(context, color: cs.primary),

      decoration: InputDecoration(
        fillColor: Colors.white,
        border: MethodsHelper.buildBorder(context),
        enabledBorder: MethodsHelper.buildBorder(context),
        focusedBorder: MethodsHelper.buildBorder(context),
        errorBorder: MethodsHelper.buildErrorBorder(context),
        focusedErrorBorder: MethodsHelper.buildErrorBorder(context),
        hintStyle: AppStyles.style16Regular(context, color: cs.tertiary),

        hintText: hint,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ),
      ),
    );
  }
}

class HelpTextField extends StatelessWidget {
  const HelpTextField({
    super.key,
    this.validator,
    required this.hint,
    required this.controller,
  });

  final String? Function(String?)? validator;
  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return SizedBox(
      height: 150,
      child: TextFormField(
        style: AppStyles.style16Regular(context, color: cs.primary),
        maxLines: null,
        controller: controller,
        expands: true,
        validator: validator,
        keyboardType: TextInputType.multiline,
        textAlignVertical: TextAlignVertical.top,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          fillColor: cs.secondary,
          hintText: hint,
          hintStyle: AppStyles.style16Regular(context, color: cs.tertiary),
          border: MethodsHelper.buildBorder(context),
          enabledBorder: MethodsHelper.buildBorder(context),
          focusedBorder: MethodsHelper.buildBorder(context),
          errorBorder: MethodsHelper.buildErrorBorder(context),
          focusedErrorBorder: MethodsHelper.buildErrorBorder(context),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 25.0,
            horizontal: 10.0,
          ),
        ),
      ),
    );
  }
}
