import '/utils/app_urls.dart';

class ResumeBtn extends StatelessWidget {
  const ResumeBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 50  ,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [AppColors.btnGradiantStartColor, AppColors.btnGradiantEndColor],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight
        )
      ),
      child: InkWell(
          onTap: () {
            //link to resume
          },
          child: Center(
            child: Text(
              "Check  Resume",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),
        )
      ),
    );
  }
}
