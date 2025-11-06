import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/colors/app_colors.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';
import 'package:portfolio_ayhem_hamdi/features/home/domain/project_model.dart';

class MyProjectsSection extends StatelessWidget {
  const MyProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: AppColors.kPrimaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "My",
                  style: AppStyles.style28Regular(
                    context,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const Gap(16),
                Text(
                  "Projects",
                  style: AppStyles.style28ExtraBold(
                    context,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
            const Gap(40),
            MobileProjectsListBuilder(),
          ],
        ),
      ),
    );
  }
}

class MobileProjectsListBuilder extends StatelessWidget {
  const MobileProjectsListBuilder({super.key});
  static final List<ProjectModel> l = [
    ProjectModel(
      image: AppAssets.fruitHub,
      projectTitle: "Fruit-Hub",
      projectDecription:
          "A modern grocery e-commerce app built with Flutter and Supabase, designed to make shopping seamless and intuitive. It offers secure authentication through OAuth, allowing quick sign-in with Google or Facebook. Users can easily browse, add to cart, and purchase groceries with a smooth, responsive interface.",
      youtubeLink: "youtubeLink",
      githubLink: "githubLink",
    ),
    ProjectModel(
      image: AppAssets.chatbot,
      projectTitle: "University-Chatbot",
      projectDecription:
          "An intelligent university chatbot powered by a fine-tuned model and FastAPI backend. It’s trained on real university data to provide accurate, instant answers about faculty, programs, diplomas, and more. Built to enhance student engagement and streamline information access through natural, conversational interaction.",
      youtubeLink: "youtubeLink",
      githubLink: "githubLink",
    ),
    ProjectModel(
      image: AppAssets.notesApp,
      projectTitle: "Notes-App",
      projectDecription:
          "A sleek and minimalistic note-taking app built with Flutter, featuring secure local data storage powered by the Hive package. It lets users quickly jot down and organize important thoughts while enjoying a smooth, creative, and user-friendly design experience.",
      youtubeLink: "youtubeLink",
      githubLink: "githubLink",
    ),
    ProjectModel(
      image: AppAssets.bankPick,
      projectTitle: "BankPick",
      projectDecription:
          "BankPick is a modern finance app that enables secure transactions with cards like Visa while tracking monthly spending. It provides a detailed list of your transactions and insights into your expenses, all within a sleek interface supporting both dark and light modes.",
      youtubeLink: "youtubeLink",
      githubLink: "githubLink",
    ),
    ProjectModel(
      image: AppAssets.dashboard,
      projectTitle: "Admin-Dashboard",
      projectDecription:
          "A responsive admin dashboard featuring a creative, adaptive design that seamlessly adjusts to laptops, tablets, and mobile devices. It offers intuitive data visualization, efficient management tools, and a clean interface for smooth control and monitoring across all platforms.",
      youtubeLink: "youtubeLink",
      githubLink: "githubLink",
    ),
    ProjectModel(
      image: AppAssets.bookly,
      projectTitle: "Bookly",
      projectDecription:
          "Bookly is a stylish app that integrates the Google Books API to let users explore, preview, and download books easily. With its creative and intuitive design, it offers a smooth reading discovery experience and effortless access to a vast collection of titles.",
      youtubeLink: "youtubeLink",
      githubLink: "githubLink",
    ),
    ProjectModel(
      image: AppAssets.jobsApi,
      projectTitle: "Jobs-API",
      projectDecription:
          "A robust Jobs API built with Node.js, Express.js, and MongoDB Atlas Cloud, featuring full CRUD functionality and secure authentication using JWT tokens. It includes comprehensive API documentation via Swagger UI, ensuring easy integration and efficient job management.",
      youtubeLink: "youtubeLink",
      githubLink: "githubLink",
    ),
    ProjectModel(
      image: AppAssets.newsCloud,
      projectTitle: "News-Cloud",
      projectDecription:
          "NewsCloud is a dynamic news app powered by the News API, delivering real-time updates from trusted sources worldwide. It features a clean, modern interface that makes staying informed effortless, with live headlines and stories tailored to your interests.",
      youtubeLink: "youtubeLink",
      githubLink: "githubLink",
    ),
    ProjectModel(
      image: AppAssets.certif4C,
      projectTitle: "Certif-Booking",
      projectDecription:
          "Certif is a collaborative app developed with the university to help students easily book and manage certifications offered by the institution. It streamlines the registration process with a simple, user-friendly interface, making certification access faster and more organized.",
      youtubeLink: "youtubeLink",
      githubLink: "githubLink",
    ),
    ProjectModel(
      image: AppAssets.weatherApp,
      projectTitle: "Weather-App",
      projectDecription:
          "A sleek weather app powered by the Weather API, providing real-time forecasts and detailed climate updates. With its clean and intuitive design, users can easily check current conditions, track temperature changes, and plan ahead with accuracy.",
      youtubeLink: "youtubeLink",
      githubLink: "githubLink",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: l.length,
      itemBuilder: (context, index) =>
          MobileProjectDisplayWidget(projectModel: l[index], index: index),
    );
  }
}

class MobileProjectDisplayWidget extends StatelessWidget {
  const MobileProjectDisplayWidget({
    super.key,
    required this.projectModel,
    required this.index,
  });

  final ProjectModel projectModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    final ColorScheme cs = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                index >= 9 ? "${index + 1}" : "0${index + 1}",
                style: AppStyles.style24ExtraBold(context, color: cs.secondary),
              ),
              const Gap(16),
              Text(
                projectModel.projectTitle,
                style: AppStyles.style24SemiBold(
                  context,
                  color: cs.secondary,
                ).copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Gap(28),
        ClipRRect(
          borderRadius: BorderRadius.circular(19),
          child: Image.asset(projectModel.image, width: width),
        ),

        const Gap(28),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            projectModel.projectDecription,
            style: AppStyles.style16Regular(context, color: cs.onSurface),
          ),
        ),
        const Gap(28),
      ],
    );
  }
}
