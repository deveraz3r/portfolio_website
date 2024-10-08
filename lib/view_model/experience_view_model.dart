import '/utils/app_urls.dart';

class ExperienceViewModel extends GetxController {
  final List<Experience> experiences = [
    Experience(
      image: 'https://example.com/image1.png',
      title: 'Full Stack Developer',
      subtitle: 'AutoAdvises.com',
      time: 'Oct 2023 - Present',
      description: 'At AutoAdvises.com, I lead the full-stack development of a web and mobile application, primarily using Flutter for the front-end and Node.js for the back-end. I am responsible for building cross-platform mobile applications with Flutter, ensuring smooth performance on both Android and iOS. On the server side, I develop and maintain RESTful APIs using Express.js, managing data storage and retrieval with MongoDB. I also focus on optimizing application performance, handling cloud deployment, and integrating third-party services for features like real-time notifications and payment gateways. Collaboration with UI/UX designers and product teams ensures that the applications are user-friendly and meet business requirements.',
      skills: ['Flutter', 'NodeJs', 'MongoDB', 'Express.js', 'REST API'],
    ),
    Experience(
      image: 'https://example.com/image2.png',
      title: 'Flutter Developer',
      subtitle: 'TechSolutions Inc.',
      time: 'Jan 2022 - Sep 2023',
      description: 'As a Flutter Developer at TechSolutions Inc., I worked on creating and maintaining mobile applications for various clients. My role involved building responsive and visually appealing UI components, integrating APIs for seamless data flow, and optimizing the app for performance. I also implemented features such as push notifications, background tasks, and local data storage using Hive and SharedPreferences. In collaboration with backend developers, I ensured that all APIs were correctly integrated, and I worked closely with testers to resolve bugs and ensure smooth releases. The applications were deployed on both Google Play Store and Apple App Store, where they received positive user feedback.',
      skills: ['Flutter', 'Dart', 'Hive', 'SharedPreferences', 'REST API'],
    ),
    Experience(
      image: 'https://example.com/image3.png',
      title: 'Backend Developer',
      subtitle: 'InnovateTech',
      time: 'Aug 2020 - Dec 2021',
      description: 'At InnovateTech, I worked as a backend developer, focusing on building scalable and efficient APIs using Node.js and Express. My responsibilities included designing database schemas, implementing authentication and authorization systems, and optimizing query performance in MongoDB. I also worked with front-end developers to integrate APIs and troubleshoot issues during development. In addition to my core development tasks, I contributed to the CI/CD pipelines, helping automate the deployment process. I played an active role in code reviews and provided mentorship to junior developers, ensuring code quality and adherence to best practices.',
      skills: ['NodeJs', 'Express.js', 'MongoDB', 'JWT', 'CI/CD'],
    ),
    Experience(
      image: 'https://example.com/image4.png',
      title: 'Mobile App Developer',
      subtitle: 'QuickSolutions',
      time: 'Jun 2019 - Jul 2020',
      description: 'I developed multiple cross-platform mobile applications using Flutter for QuickSolutions. My role involved designing intuitive user interfaces and ensuring consistent behavior across different devices. I focused on building reusable widgets, managing state using GetX, and integrating APIs developed in-house for data retrieval and updates. I also implemented Firebase features like authentication, Firestore for real-time databases, and push notifications for enhanced user engagement. Regularly collaborating with the design and backend teams, I ensured that all apps were delivered on time and met high standards of functionality and performance.',
      skills: ['Flutter', 'Dart', 'GetX', 'Firebase', 'Firestore'],
    ),
    // Add more Experience instances here
  ];
}
