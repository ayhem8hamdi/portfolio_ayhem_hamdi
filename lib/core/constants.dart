import 'package:portfolio_ayhem_hamdi/core/utils/assets/app_assets.dart';
import 'package:portfolio_ayhem_hamdi/features/home/domain/project_model.dart';

abstract class Constants {
  static const String fullName = "Ayhem Hamdi.";
  static const String mainFrameWork =
      "Flutter"; // put ur main framework u are working with
  static const String state = "Developer"; // u could put developer or engineer
  static const String nationality = "Tunisia.";
  static const String welcomeSectionIntroducition =
      "I am Ayhem Hamdi, a passionate Flutter developer from Tunisia, dedicated to building innovative and seamless mobile applications. My focus is on performance and user experience, bringing creative ideas to life with clean, efficient code. Let's build something extraordinary together.";
  static const String aboutMeText =
      "I am Ayhem Hamdi, a Computer Science student at the Higher Institute of Computer Science Ariana. I began my development journey in June 2024, earning a Udemy certificate in Dart OOP and Flutter initiation. Since then, I have been actively working on various projects both personal and collaborative using Firebase, Supabase. Alongside Flutter development, I expanded my skills to include backend and API development using Node.js and Express, as well as learning the MERN stack (without React). I am passionate about continuously improving my expertise in clean architecture and BLoC state management, and I am always eager to take on new projects that allow me to apply and grow my technical knowledge.";

  //project Model is a class in which u find attributs like project name , project Description , project image etc so change all project with your data and
  //if u have less or more project no problem because its a list builder and it has no a specefic number of item

  static const ProjectModel projet1 = ProjectModel(
    image: AppAssets.fruitHub,
    projectTitle: "Fruit-Hub",
    projectDecription:
        "A modern grocery e-commerce app built with Flutter and Supabase, designed to make shopping seamless and intuitive. It offers secure authentication through OAuth, allowing quick sign-in with Google or Facebook. Users can easily browse, add to cart, and purchase groceries with a smooth, responsive interface.",
    youtubeLink: "youtubeLink",
    githubLink: "githubLink",
  );

  static const ProjectModel projet2 = ProjectModel(
    image: AppAssets.chatbot,
    projectTitle: "University-Chatbot",
    projectDecription:
        "An intelligent university chatbot powered by a fine-tuned model and FastAPI backend. It’s trained on real university data to provide accurate, instant answers about faculty, programs, diplomas, and more. Built to enhance student engagement and streamline information access through natural, conversational interaction.",
    youtubeLink: "youtubeLink",
    githubLink: "githubLink",
  );
  static const ProjectModel project3 = ProjectModel(
    image: AppAssets.notesApp,
    projectTitle: "Notes-App",
    projectDecription:
        "A sleek and minimalistic note-taking app built with Flutter, featuring secure local data storage powered by the Hive package. It lets users quickly jot down and organize important thoughts while enjoying a smooth, creative, and user-friendly design experience.",
    youtubeLink: "youtubeLink",
    githubLink: "githubLink",
  );

  static const ProjectModel project4 = ProjectModel(
    image: AppAssets.bankPick,
    projectTitle: "BankPick",
    projectDecription:
        "BankPick is a modern finance app that enables secure transactions with cards like Visa while tracking monthly spending. It provides a detailed list of your transactions and insights into your expenses, all within a sleek interface supporting both dark and light modes.",
    youtubeLink: "youtubeLink",
    githubLink: "githubLink",
  );
  static const ProjectModel project5 = ProjectModel(
    image: AppAssets.dashboard,
    projectTitle: "Admin-Dashboard",
    projectDecription:
        "A responsive admin dashboard featuring a creative, adaptive design that seamlessly adjusts to laptops, tablets, and mobile devices. It offers intuitive data visualization, efficient management tools, and a clean interface for smooth control and monitoring across all platforms.",
    youtubeLink: "youtubeLink",
    githubLink: "githubLink",
  );
  static const ProjectModel project6 = ProjectModel(
    image: AppAssets.bookly,
    projectTitle: "Bookly",
    projectDecription:
        "Bookly is a stylish app that integrates the Google Books API to let users explore, preview, and download books easily. With its creative and intuitive design, it offers a smooth reading discovery experience and effortless access to a vast collection of titles.",
    youtubeLink: "youtubeLink",
    githubLink: "githubLink",
  );

  static const ProjectModel project7 = ProjectModel(
    image: AppAssets.jobsApi,
    projectTitle: "Jobs-API",
    projectDecription:
        "A robust Jobs API built with Node.js, Express.js, and MongoDB Atlas Cloud, featuring full CRUD functionality and secure authentication using JWT tokens. It includes comprehensive API documentation via Swagger UI, ensuring easy integration and efficient job management.",
    youtubeLink: "youtubeLink",
    githubLink: "githubLink",
  );
  static const ProjectModel project8 = ProjectModel(
    image: AppAssets.newsCloud,
    projectTitle: "News-Cloud",
    projectDecription:
        "NewsCloud is a dynamic news app powered by the News API, delivering real-time updates from trusted sources worldwide. It features a clean, modern interface that makes staying informed effortless, with live headlines and stories tailored to your interests.",
    youtubeLink: "youtubeLink",
    githubLink: "githubLink",
  );
  static const ProjectModel project9 = ProjectModel(
    image: AppAssets.certif4C,
    projectTitle: "Certif-Booking",
    projectDecription:
        "Certif is a collaborative app developed with the university to help students easily book and manage certifications offered by the institution. It streamlines the registration process with a simple, user-friendly interface, making certification access faster and more organized.",
    youtubeLink: "youtubeLink",
    githubLink: "githubLink",
  );
  static const ProjectModel project10 = ProjectModel(
    image: AppAssets.weatherApp,
    projectTitle: "Weather-App",
    projectDecription:
        "A sleek weather app powered by the Weather API, providing real-time forecasts and detailed climate updates. With its clean and intuitive design, users can easily check current conditions, track temperature changes, and plan ahead with accuracy.",
    youtubeLink: "youtubeLink",
    githubLink: "githubLink",
  );
}
