enum AppType { ALL, MOBILE, WEB}

class Project {
  final String image;
  final List<String> techUsed;
  final String title;
  final String subtitle;
  final String time;
  final String description;
  final AppType appType;

  Project({
    required this.image,
    required this.techUsed,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.description,
    required this.appType,
  });
}
