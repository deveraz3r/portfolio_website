import 'package:portfolio_app/resources/components/resume_btn.dart';

import '/utils/app_urls.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          // width: double.infinity,
          padding: const EdgeInsets.all(20),
          // color: AppColors.backgroundColor,
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 900, // Limit the max width for text
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left side text (Name and description)
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hi, I am",
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 5,),
                          const Text(
                            AboutViewModel.fName,
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const Row(
                            children: [
                              const Text(
                                "I am a",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 5,),
                              const Text(
                                "Flutter Developer",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple,
                                ),
                                softWrap: true,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            AboutViewModel.bio,
                            style: TextStyles.bioTextStyle,
                            softWrap: true, // Enables text wrapping
                          ),
                          const SizedBox(height: 20),
                          // Social icons, etc.
                        ],
                      ),
                    ),
                    // Right side image (Profile Picture)
                    Container(
                      margin: const EdgeInsets.all(30),
                      child: CircleAvatar(
                        radius: constraints.maxWidth > 800 ? 120 : 100, // Dynamic sizing based on screen width
                        backgroundImage: const AssetImage(AboutViewModel.profileImagePath),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: AboutViewModel.socials,
                ),
                const SizedBox(height: 2),
                ResumeBtn(),
              ],
            ),
          ),
        );
      },
    );
  }
}
