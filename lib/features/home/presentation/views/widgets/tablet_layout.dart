import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/custom_button.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/custom_text_field.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/reusable_widgets/methods_helper.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/contact_me.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/footer_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/mobile_social_contact_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/tablet_about_me.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/tablet_my_experience_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/tablet_project_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/tablet_skills_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/tablet_welcome_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverGap(40),
          TabletWelcomeSection(),
          SliverGap(70),
          TabletSkillsSection(),
          SliverGap(80),
          TabletMyExperiencesSection(),
          SliverGap(85),
          TabletAboutMe(),
          SliverGap(80),
          TabletMyProjectsSection(),
          SliverGap(80),
          TabletContactMeSection(),
          SliverGap(90),
          FooterSection(),
        ],
      ),
    );
  }
}

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
      log("$email & $name & $subject & $help");
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

          Row(
            children: [
              CustomButton(text: "Get in Touch", onPressed: _getInTouchPressed),
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
