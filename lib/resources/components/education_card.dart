import '/utils/app_urls.dart';

class EducationCard extends StatelessWidget {
  final Education education;
  final double maxWidth;

  const EducationCard({required this.education, required this.maxWidth, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 640 ? true : false;
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = screenWidth * 0.85; // Set card width to 85% of screen width
    if (cardWidth > maxWidth) cardWidth = maxWidth; // Limit the max width

    return Container(
      width: cardWidth,
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor.withOpacity(0.7),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.purpleBorderColor),
        boxShadow: [
          BoxShadow(
            color: AppColors.btnGradiantStartColor.withOpacity(0.3),
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Institution, Degree, and Duration
          Text(
            education.institution,
            style: TextStyle(
              fontSize: isMobile ? 14 : 18,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteTextColor,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            education.degree,
            style: TextStyle(
              fontSize: isMobile ? 12 : 16,
              color: AppColors.greyTextColor,
            ),
          ),
          Text(
            education.duration,
            style: TextStyle(
              fontSize: isMobile ? 10 : 12,
              color: AppColors.grey80TextColor,
            ),
          ),
          const SizedBox(height: 10),

          // Grade
          Text(
            'Grade: ${education.grade}%',
            style: TextStyle(
              fontSize: isMobile ? 12 : 15,
              color: Colors.lightGreenAccent,
            ),
          ),
          const SizedBox(height: 10),

          // Description
          Text(
            education.description,
            style: TextStyle(
              fontSize: isMobile ? 12 : 15,
              color: AppColors.greyTextColor,
            ),
            overflow: TextOverflow.visible,
          ),
        ],
      ),
    );
  }
}
