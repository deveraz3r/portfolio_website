import '/utils/app_urls.dart';

class ProjectsViewModel extends GetxController {

  Rx<AppType> filter = AppType.ALL.obs;
  RxList<Project> filteredProjects = <Project>[].obs;

  // Note: You can add more app types under "/models/projects_model.dart"
  final List<Project> allProjects = [
    Project(
      image: 'assets/projects/sample_project/sample_image.png',
      techUsed: ['ReactJs', 'NodeJs', 'MongoDB'],
      title: 'AutoAdvisers.com',
      subtitle: 'Web Application',
      time: 'Oct 2023 - Present',
      description: 'AutoAdvisers.com is a comprehensive online marketplace that connects car buyers with auto dealerships. '
          'The platform provides tools for customers to compare prices, schedule test drives, and secure financing for vehicles. '
          'Built using ReactJs for the frontend and NodeJs with MongoDB for backend services, it offers a seamless user experience '
          'and robust functionality for both buyers and sellers.',
      appType: AppType.WEB,
    ),
    Project(
      image: 'assets/projects/sample_project/sample_image.png',
      techUsed: ['React Native', 'Stripe', 'NodeJs', 'Firebase'],
      title: 'Health Hero',
      subtitle: 'Android Application',
      time: 'Feb 2023 - June 2023',
      description: 'Health Hero is a fitness and wellness tracking mobile application that enables users to monitor their daily activities, '
          'track fitness goals, and process payments for premium features via Stripe. It was developed using React Native for cross-platform '
          'functionality and NodeJs for backend support. The app includes integrated health tracking tools and interactive features '
          'to enhance the user experience.',
      appType: AppType.MOBILE,
    ),
    Project(
      image: 'assets/projects/sample_project/sample_image.png',
      techUsed: ['Flutter', 'Firebase'],
      title: 'Foodie Finder',
      subtitle: 'Mobile Application',
      time: 'July 2023 - Present',
      description: 'Foodie Finder is a mobile app that helps users discover local restaurants and eateries based on their preferences. '
          'Built with Flutter for a rich and responsive UI, the app integrates Firebase for real-time database management and user authentication. '
          'Foodie Finder provides location-based recommendations, user reviews, and a streamlined ordering experience for users.',
      appType: AppType.MOBILE,
    ),
    Project(
      image: 'assets/projects/sample_project/sample_image.png',
      techUsed: ['Django', 'React'],
      title: 'Task Tracker',
      subtitle: 'Web Application',
      time: 'Jan 2023 - April 2023',
      description: 'Task Tracker is a productivity web app designed to help individuals and teams manage their tasks and deadlines effectively. '
          'The project leverages Django for backend development and React for a dynamic, user-friendly frontend. '
          'Task Tracker includes features like project categorization, deadline alerts, and real-time collaboration tools, enabling users to '
          'stay organized and improve productivity.',
      appType: AppType.WEB,
    ),
    Project(
      image: 'assets/projects/sample_project/sample_image.png',
      techUsed: ['Unity', 'C#'],
      title: '3D Adventure Game',
      subtitle: 'Game Development',
      time: 'May 2023 - July 2023',
      description: 'The 3D Adventure Game is an immersive gaming experience built with Unity, designed to engage players in a visually stunning world. '
          'This project utilized C# for scripting and Unity for game development, incorporating physics-based gameplay, interactive environments, '
          'and a captivating narrative. It offers players an open-world environment where they can explore, solve puzzles, and complete quests.',
      appType: AppType.ALL,
    ),
    // Add more projects as needed
  ];

  void changeType(AppType filter) {
    this.filter.value = filter;
    _runFilter();
  }

  void _runFilter(){
    filteredProjects.value = allProjects.where((project) {
      if (filter.value == AppType.ALL) return true;
      return project.appType == filter.value;
    }).toList();
  }

  @override
  void onInit() {
    _runFilter();

    super.onInit();
  }
}
