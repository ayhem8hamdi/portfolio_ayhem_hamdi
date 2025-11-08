class ProjectModel {
  final String image;
  final String projectTitle;
  final String projectDecription;
  final String? youtubeLink;
  final String? githubLink;
  final String? linkedinLink;

  const ProjectModel({
    required this.image,
    required this.projectTitle,
    required this.projectDecription,
    this.youtubeLink,
    this.githubLink,
    this.linkedinLink,
  });
}
