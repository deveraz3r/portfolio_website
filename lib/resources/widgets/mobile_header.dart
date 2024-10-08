import 'package:portfolio_app/resources/components/resume_btn.dart';

import '/utils/app_urls.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      // color: const Color(0xFF0D0D1E), // Dark background color matching your design
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile Image
          CircleAvatar(
            radius: 90,
            backgroundImage: AssetImage(AboutViewModel.profileImagePath),
          ),
          const SizedBox(height: 20),
          // Name and Title
          const Text(
            "Hi, I am",
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
            ),
          ),
          const Text(
            AboutViewModel.fName,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            text: const TextSpan(
              text: "I am a ",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white70,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "Full Stack Developer",
                  style: TextStyle(
                    color: Colors.purpleAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              AboutViewModel.bio,
              textAlign: TextAlign.center,
              style: TextStyles.bioTextStyle,
            ),
          ),
          const SizedBox(height: 20),
          // Social Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: AboutViewModel.socials,
          ),
          const SizedBox(height: 2),
          // Resume Button
          ResumeBtn(),
        ],
      ),
    );
  }
}
