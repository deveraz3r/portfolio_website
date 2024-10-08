import '/utils/app_urls.dart';

class ExperienceCard extends StatefulWidget {
  final Experience experience;

  const ExperienceCard({Key? key, required this.experience}) : super(key: key);

  @override
  _ExperienceCardState createState() => _ExperienceCardState();
}

class _ExperienceCardState extends State<ExperienceCard> {
  bool isHovered = false;

  // Handle hover state
  void _onHover(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }

  @override
  Widget build(BuildContext context) {

    bool isMobile = MediaQuery.of(context).size.width < 640? true : false;

    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          border: Border.all(color: AppColors.blueBorderColor),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: AppColors.blueBorderColor.withOpacity(0.3),
              blurRadius: 10,
              // blurStyle:
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with image, title, subtitle, and time
            Row(
              children: [
                //TODO: remove hardcoded image
                Image.asset("assets/icons/flutter.png", width: 50, height: 50),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.experience.title,
                      style: TextStyle(
                        fontSize: isMobile? 14 : 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteTextColor
                      )
                    ),
                    Text(
                      widget.experience.subtitle,
                      style: TextStyle(
                        fontSize: isMobile? 12 : 16,
                        color: AppColors.greyTextColor
                      )
                    ),
                    Text(
                      widget.experience.time,
                      style: TextStyle(
                        fontSize: isMobile? 10 : 12,
                        color: AppColors.grey80TextColor
                      )
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),

            // Description with hover expansion
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: isHovered ? null : 100, // Initially limited height, expands on hover
              child: Text(
                widget.experience.description,
                style: GoogleFonts.poppins(
                  fontSize: isMobile? 12 : 15,
                  color: AppColors.greyTextColor
                ),
                maxLines: isHovered ? null : 5,
                overflow: isHovered ? TextOverflow.visible : TextOverflow.ellipsis,
              ),
            ),

            const SizedBox(height: 25,),

            // Skills list
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Skills: ",
                  style: GoogleFonts.poppins(
                    fontSize: isMobile? 12 : 15,
                    color: AppColors.greyTextColor,
                    fontWeight: FontWeight.bold
                  )
                ),
                const SizedBox(width: 5,),
                Expanded(
                  child: Wrap(
                    spacing: 8.0, // Horizontal spacing between items
                    runSpacing: 4.0, // Vertical spacing between lines
                    children: widget.experience.skills.map(
                          (skill) => ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.4), // Adjust width based on screen size
                        child: Text(
                          "• $skill",
                          softWrap: true, // Enables text wrapping
                          style: GoogleFonts.poppins(
                            fontSize: isMobile ? 12 : 15,
                            color: AppColors.greyTextColor,
                          ),
                        ),
                      ),
                    ).toList(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
