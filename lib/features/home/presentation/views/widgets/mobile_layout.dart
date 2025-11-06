import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/custom_text_field.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/methods_helper.dart';

import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/about_me_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/experience_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/mobile_layout_welcome_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/my_projects_mobile_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/skills_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverGap(40),
          MobileWelcomSection(),
          SliverGap(60),
          SkillsSection(),
          SliverGap(40),
          MyExperiencesSection(),
          AboutMeSection(),
          SliverGap(40),
          MyProjectsSection(),
          SliverGap(40),
          ContactMeSection(),
        ],
      ),
    );
  }
}

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SliverToBoxAdapter(
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [GetInTouchForm()],
        ),
      ),
    );
  }
}

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
      //send notif logic from cubit
      log("$email & $name & $subject & $help");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            validator: (value) => MethodsHelper.validateName(value),
          ),
          const Gap(20),
          CustomTextField(
            hint: "Subject",
            controller: _subjectController,
            validator: (value) => MethodsHelper.validateName(value),
          ),
          const Gap(20),
          HelpTextField(
            hint: "How can I help?*",
            controller: _helpController,
            validator: (value) => MethodsHelper.validateName(value),
          ),
          const Gap(20),
          /*LoginButtonBlocConsumer(
            text: 'تسجيل دخول',
            onLoginPressed: _getInTouchPressed,
          ),*/
        ],
      ),
    );
  }
}
