import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/custom_text_field.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/methods_helper.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/manager/email_send_cubit/email_send_cubit.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/send_email_button_bloc_consumer.dart';

class GetInTouchForm extends StatefulWidget {
  const GetInTouchForm({super.key});

  @override
  State<GetInTouchForm> createState() => _GetInTouchFormState();
}

class _GetInTouchFormState extends State<GetInTouchForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _subjectController = TextEditingController();
  final _helpController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _subjectController.dispose();
    _helpController.dispose();
    super.dispose();
  }

  void _getInTouchPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      final email = _emailController.text.trim();
      final name = _nameController.text.trim();
      final subject = _subjectController.text.trim();
      final help = _helpController.text.trim();

      log("Sending email: $email & $name & $subject & $help");

      context.read<EmailSendCubit>().sendEmail(
        name: name,
        email: email,
        subject: subject,
        message: help,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            hint: "Your name",
            controller: _nameController,
            validator: (value) => MethodsHelper.validateName(value),
          ),
          const Gap(20),
          CustomTextField(
            hint: "Email",
            controller: _emailController,
            validator: (value) => MethodsHelper.validateEmail(value),
          ),
          const Gap(20),
          CustomTextField(
            hint: "Subject",
            controller: _subjectController,
            validator: (value) => MethodsHelper.validateSubject(value),
          ),
          const Gap(20),
          HelpTextField(
            hint: "How can I help?*",
            controller: _helpController,
            validator: (value) => MethodsHelper.validateHelp(value),
          ),
          const Gap(20),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SendEmailButtonBlocConsumer(getInTouch: _getInTouchPressed),
            ],
          ),
        ],
      ),
    );
  }
}
