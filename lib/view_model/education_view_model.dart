import '/utils/app_urls.dart';

class EducationViewModel extends GetxController {
  List<Education> educationList = [
    Education(
      institution: 'Air University, Islamabad',
      degree: 'Bachelor in Computer Science',
      duration: '2022 - Present',
      grade: 71.0,
      description: 'I am pursuing my Bachelor\'s degree in Computer Science at Air University, focusing on mobile development and networking, gaining hands-on experience in various technologies.',
    ),
    Education(
      institution: 'Fazia Inter College, Kallar Kahar',
      degree: 'Intermediate in Computer Science (ICS)',
      duration: '2021 - 2022',
      grade: 71.45,
      description: 'I specialized in Computer Science, learning foundational programming concepts and mathematical problem-solving techniques, which helped build my passion for technology.',
    ),
    Education(
      institution: 'Fazia Inter College, Kallar Kahar',
      degree: 'Matric in Science',
      duration: '2019 - 2020',
      grade: 76.72,
      description: 'I completed my secondary education with a focus on science, developing a strong base in mathematics, physics, and chemistry, which has been instrumental in my further studies.',
    ),
  ];
}
