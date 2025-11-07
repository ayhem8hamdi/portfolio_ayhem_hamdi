import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/colors/app_colors.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/styles/app_styles.dart';
import 'package:portfolio_ayhem_hamdi/features/home/domain/project_model.dart';

class TabletMyProjectsSection extends StatelessWidget {
  const TabletMyProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return SliverToBoxAdapter(
      child: Container(
        color: AppColors.kPrimaryColor,
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
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
            const Gap(64),
            TabletProjectsListBuilder(),
          ],
        ),
      ),
    );
  }
}

class TabletProjectsListBuilder extends StatelessWidget {
  const TabletProjectsListBuilder({super.key});
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
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 65),
        child: TabletProjectItem(projectModel: l[index], index: index + 1),
      ),
    );
  }
}

class TabletProjectItem extends StatelessWidget {
  const TabletProjectItem({
    super.key,
    required this.projectModel,
    required this.index,
  });
  final ProjectModel projectModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: index % 2 != 0
                ? ProjectImage(projectModel: projectModel)
                : ProjectInfo(index: index, cs: cs, projectModel: projectModel),
          ),
          const Gap(45),
          Expanded(
            flex: 1,
            child: index % 2 != 0
                ? ProjectInfo(index: index, cs: cs, projectModel: projectModel)
                : ProjectImage(projectModel: projectModel),
          ),
        ],
      ),
    );
  }
}

class ProjectInfo extends StatelessWidget {
  const ProjectInfo({
    super.key,
    required this.index,
    required this.cs,
    required this.projectModel,
  });

  final int index;
  final ColorScheme cs;
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectName(index: index, cs: cs, projectModel: projectModel),
        const Gap(23),
        ProjectDesc(projectModel: projectModel, cs: cs),
      ],
    );
  }
}

class ProjectImage extends StatelessWidget {
  const ProjectImage({super.key, required this.projectModel});

  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(19),
      child: Image.asset(projectModel.image),
    );
  }
}

class ProjectDesc extends StatelessWidget {
  const ProjectDesc({super.key, required this.projectModel, required this.cs});

  final ProjectModel projectModel;
  final ColorScheme cs;

  @override
  Widget build(BuildContext context) {
    return Text(
      projectModel.projectDecription,
      style: AppStyles.style16Regular(context, color: cs.onSurface),
    );
  }
}

class ProjectName extends StatelessWidget {
  const ProjectName({
    super.key,
    required this.index,
    required this.cs,
    required this.projectModel,
  });

  final int index;
  final ColorScheme cs;
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          index >= 10 ? "$index" : "0$index",
          style: AppStyles.style48ExtraBold(context, color: cs.secondary),
        ),
        const Gap(22),
        Text(
          projectModel.projectTitle,
          style: AppStyles.style32Bold(context, color: cs.secondary),
        ),
      ],
    );
  }
}
