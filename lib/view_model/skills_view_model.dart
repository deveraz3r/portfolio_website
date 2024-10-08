import '/utils/app_urls.dart';

class SkillsViewModel extends GetxController {
  final List<Category> skillCategories = [
    Category(
      title: 'Frontend',
      skills: [
        Skill(name: 'Flutter', icon: 'assets/icons/flutter.png'),
        Skill(name: 'Flutter Flow', icon: 'assets/icons/flutterflow.png'),
        // Add more skills
      ],
    ),
    Category(
      title: 'Backend',
      skills: [
        Skill(name: 'Node Js', icon: 'assets/icons/nodejs.png'),
        Skill(name: 'Firebase', icon: 'assets/icons/firebase.png'),
        Skill(name: 'MongoDb', icon: 'assets/icons/mongodb.png'),
        Skill(name: 'SQLite', icon: 'assets/icons/sqlite.png'),
        // Add more skills
      ],
    ),
    Category(
      title: 'Android/IOS',
      skills: [
        Skill(name: 'Flutter', icon: 'assets/icons/flutter.png'),
        // Add more skills
      ],
    ),
    Category(
      title: 'Others',
      skills: [
        Skill(name: 'Git', icon: 'assets/icons/git.png'),
        Skill(name: 'Vs Code', icon: 'assets/icons/vscode.png'),
        Skill(name: 'Postman', icon: 'assets/icons/postman.png'),
        // Add more skills
      ],
    ),
    // Add more categories and skills as needed
  ];
}
