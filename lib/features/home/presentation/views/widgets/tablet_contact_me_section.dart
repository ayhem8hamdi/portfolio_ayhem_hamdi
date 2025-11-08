import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/custom_text_field.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/methods_helper.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/manager/email_send_cubit/email_send_cubit.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/contact_me.dart'
    show ContactInfo;
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/mobile_social_contact_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/send_email_button_bloc_consumer.dart';

class TabletContactMeSection extends StatelessWidget {
  const TabletContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Row(
          children: [
            Expanded(child: TabletGetInTouchForm()),
            Gap(55),
            Expanded(child: ContactInfo()),
          ],
        ),
      ),
    );
  }
}

class TabletGetInTouchForm extends StatefulWidget {
  const TabletGetInTouchForm({super.key});

  @override
  State<TabletGetInTouchForm> createState() => _TabletGetInTouchFormState();
}

class _TabletGetInTouchFormState extends State<TabletGetInTouchForm> {
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
      //send notif logic from cubit
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
            children: [
              SendEmailButtonBlocConsumer(
                getInTouch: _getInTouchPressed,
                nameController: _nameController,
                emailController: _emailController,
                helpController: _helpController,
                subjectController: _subjectController,
              ),

              Gap(32),
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: CustomContactIconRow(gap: 19),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
