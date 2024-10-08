import '/utils/app_urls.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Card(
          color: AppColors.backgroundGradiantEndColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image at the top
                Image.network(
                  project.image,
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),

                // Tags (Tech Used)
                Wrap(
                  spacing: 8.0,
                  runSpacing: 12.0,
                  children: project.techUsed
                      .map((tech) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.purpleBorderColor.withOpacity(0.8)
                    ),
                        child: Text(
                        "$tech",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: AppColors.whiteTextColor,
                        )
                                          ),
                      ),)
                      .toList(),
                ),
                const SizedBox(height: 8),

                // Title, Subtitle, and Time
                Text(
                  project.title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  project.subtitle,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Text(
                  project.time,
                  style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                ),
                const SizedBox(height: 8),

                // Description
                Expanded(
                  child: Text(
                    project.description,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: AppColors.greyTextColor,
                    ),
                    overflow: TextOverflow.clip,
                    softWrap: true,
                    maxLines: 7,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
