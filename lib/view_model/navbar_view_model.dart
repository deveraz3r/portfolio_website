import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_app/utils/app_urls.dart';

class NavbarViewModel extends GetxController {

  // Scroll controller for the home view sections
  final ScrollController scrollController = ScrollController();

  // Global keys for each section
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey skillsKey = GlobalKey();
  final GlobalKey experienceKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey educationKey = GlobalKey();

  // Helper function to scroll to a specific section
  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500), // Adjust scroll duration
        curve: Curves.easeInOut, // Customize scroll animation curve
      );
    }
  }

  List<Widget> getNavItems() {
    return [
      TextButton(
        onPressed: () {
          scrollToSection(aboutKey);
        },
        child: Text(
          'About',
          style: TextStyles.navBtnTextStyle
        ),
      ),
      TextButton(
        onPressed: () {
          scrollToSection(skillsKey);
        },
        child: Text(
          'Skills',
          style: TextStyles.navBtnTextStyle
        ),
      ),
      TextButton(
        onPressed: () {
          scrollToSection(experienceKey);
        },
        child: Text(
          'Experience',
          style: TextStyles.navBtnTextStyle
        ),
      ),
      TextButton(
        onPressed: () {
          scrollToSection(projectsKey);
        },
        child: Text(
          'Projects',
          style: TextStyles.navBtnTextStyle
        ),
      ),
      TextButton(
        onPressed: () {
          scrollToSection(educationKey);
        },
        child: Text(
          'Education',
          style: TextStyles.navBtnTextStyle
        ),
      ),
    ];
  }
}
