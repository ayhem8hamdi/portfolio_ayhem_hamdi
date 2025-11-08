import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/about_me_section.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/contact_me.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/get_in_touch_form.dart';
import 'package:portfolio_ayhem_hamdi/features/home/presentation/views/widgets/mobile_social_contact_section.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTitles(firsWord: "Contact", secondWord: "Me"),
            Gap(30),
            GetInTouchForm(),
            Gap(20),
            CustomContactIconsSection(padding: 0),
            Gap(35),
            ContactInfo(),
          ],
        ),
      ),
    );
  }
}
