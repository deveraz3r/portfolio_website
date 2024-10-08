import '/utils/app_urls.dart';

class AboutViewModel {
  static const fName = "Junaid";

  static const lName = "Ahmed";

  static const profileImagePath = "assets/profile.png";

  static const bio = "I'm Junaid, a fullstack Flutter developer passionate about crafting seamless mobile and web experiences. With expertise in Flutter, Node.js, and building dynamic applications, I bring ideas to life with clean code and creative flair. Let's collaborate and turn your visions into reality. Explore my projects and let the coding journey begin!";

  static List<String> titles = [
    "Flutter Developer",
    "Node Developer",
    "Android Developer",
    "IOS Developer",
    "Web Developer",
  ];

  static List<Widget> socials = [
    IconButton(
      onPressed: () {},
      icon: FaIcon(FontAwesomeIcons.facebookF),
      color: Colors.white,
    ),
    IconButton(
      onPressed: () {},
      icon: FaIcon(FontAwesomeIcons.instagram),
      color: Colors.white,
    ),
    IconButton(
      onPressed: () {},
      icon: FaIcon(FontAwesomeIcons.github),
      color: Colors.white,
    ),
    IconButton(
      onPressed: () {},
      icon: FaIcon(FontAwesomeIcons.linkedinIn),
      color: Colors.white,
    ),
    IconButton(
      onPressed: () {},
      icon: FaIcon(FontAwesomeIcons.envelope),
      color: Colors.white,
    ),
    IconButton(
      onPressed: () {},
      icon: FaIcon(FontAwesomeIcons.whatsapp  ),
      color: Colors.white,
    )
  ];
}