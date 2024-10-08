import '/utils/app_urls.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  // Initializing Controllers
  final HomeViewModel _homeViewModel = Get.put(HomeViewModel());
  final NavbarViewModel _navbarViewModel = Get.put(NavbarViewModel());
  final SkillsViewModel _skillsViewModel = Get.put(SkillsViewModel());
  final ExperienceViewModel _experienceViewModel = Get.put(ExperienceViewModel());
  final ProjectsViewModel _projectsViewModel = Get.put(ProjectsViewModel());
  final EducationViewModel _educationViewModel = Get.put(EducationViewModel());

  // scaffold key
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // determine whether app is in mobile view
    _homeViewModel.isMobileView.value =
    MediaQuery.of(context).size.width > 640 ? false : true;

    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          color: AppColors.backgroundColor,
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: AppBar(
                backgroundColor: AppColors.backgroundColor,
                centerTitle: false,
                title: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/icon.svg",
                      height: 50,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "Dev Eraz3r",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                actions: _homeViewModel.isMobileView.value
                    ? [IconButton(
                      icon: const Icon(Icons.menu, color: Colors.white),
                      onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                    )]
                    : _navbarViewModel.getNavItems(),
                automaticallyImplyLeading: false,
              ),
            ),
          ),
        ),
      ),
      drawer: _homeViewModel.isMobileView.value
          ? Drawer(
        backgroundColor: AppColors.backgroundColor,
        child: ListView(
          children: _navbarViewModel.getNavItems(),
        ),
      )
          : null, // removes the drawer if app is not in mobile view
      body: Container(
        decoration: const BoxDecoration(
          // color: AppColors.backgroundColor,
          gradient: LinearGradient(
            colors: [AppColors.backgroundGradiantStartColor, AppColors.backgroundGradiantEndColor],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight
          )
        ),
        child: SingleChildScrollView(
          controller: _navbarViewModel.scrollController,
          child: Column(
            children: [
              // Header
              Container(
                width: double.infinity,
                color: AppColors.backgroundColor,
                padding: const EdgeInsets.only(bottom: 60, top: 30),
                child: Center(
                  key: _navbarViewModel.aboutKey,
                  child: LayoutBuilder(
                    builder: (context, sizingInformation) {
                      if (_homeViewModel.isMobileView.value) {
                        return const MobileHeader();
                      } else {
                        return const DesktopHeader();
                      }
                    },
                  ),
                ),
              ),

              const SizedBox(height: 10,),

              // Skills Section
              Center(
                key: _navbarViewModel.skillsKey,
                child: Text(
                  "Skills",
                  style: TextStyles.sectionTitle,
                ),
              ),
              const SizedBox(height: 10,),
              Center(
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 400
                  ),
                  child: Text(
                    "Here are some of my skills on which I have been working on for the past year.",
                    style: TextStyles.sectionSubTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Center(
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 1000,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical:  16.0),
                    child: Wrap(
                      spacing: 16.0, // Horizontal spacing between items
                      runSpacing: 16.0, // Vertical spacing between rows
                      children: _skillsViewModel.skillCategories.map((category) {
                        return Container(
                          constraints: const BoxConstraints(
                            minHeight: 230
                          ),
                          width: _homeViewModel.isMobileView.value ? 350 : 450,
                          child: SkillCard(
                            title: category.title,
                            skills: category.skills,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 100,),

              // Experience Section
              Center(
                key: _navbarViewModel.experienceKey,
                child: Text(
                  "Experience",
                  style: TextStyles.sectionTitle,
                ),
              ),
              const SizedBox(height: 10,),
              Center(
                child: Container(
                  constraints: const BoxConstraints(
                      maxWidth: 450
                  ),
                  child: Text(
                    "My work experience as a software engineer and working on different companies and projects.",
                    style: TextStyles.sectionSubTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                constraints: BoxConstraints(
                  maxWidth: _homeViewModel.isMobileView.value? 350:  650,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: _experienceViewModel.experiences.map((experience) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: ExperienceCard(experience: experience)
                    );
                  }).toList(),
                ),
              ),

              const SizedBox(height: 100,),

              // Projects Section
              Center(
                key: _navbarViewModel.projectsKey,
                child: Text(
                  "Projects",
                  style: TextStyles.sectionTitle,
                ),
              ),
              const SizedBox(height: 10,),
              Center(
                child: Container(
                  constraints: const BoxConstraints(
                      maxWidth: 500
                  ),
                  child: Text(
                    "I have worked on a wide range of projects. From web apps to android apps. Here are few of my projects.",
                    style: TextStyles.sectionSubTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Center(
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 1100,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        // Filter Buttons
                        Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FilterButton(
                                label: 'All',
                                isSelected: _projectsViewModel.filter.value == AppType.ALL,
                                onTap: () => _projectsViewModel.changeType(AppType.ALL),
                              ),
                              FilterButton(
                                label: 'Web App\'s',
                                isSelected: _projectsViewModel.filter.value == AppType.WEB,
                                onTap: () => _projectsViewModel.changeType(AppType.WEB),
                              ),
                              FilterButton(
                                label: 'Mobile App\'s',
                                isSelected: _projectsViewModel.filter.value == AppType.MOBILE,
                                onTap: () => _projectsViewModel.changeType(AppType.MOBILE),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Project Grid
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Obx(
                              ()=> Wrap(
                                spacing: 16.0, // Horizontal spacing between items
                                runSpacing: 16.0, // Vertical spacing between rows
                                alignment: WrapAlignment.center,
                                children: _projectsViewModel.filteredProjects.map((project) {
                                  return SizedBox(
                                    height: 490,
                                    width: 330,
                                    child: ProjectCard(project: project),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 100,),

              // Education Section
              Center(
                key: _navbarViewModel.educationKey,
                child: Text(
                  "Education",
                  style: TextStyles.sectionTitle,
                ),
              ),
              const SizedBox(height: 10,),
              Center(
                child: Container(
                  constraints: const BoxConstraints(
                      maxWidth: 500
                  ),
                  child: Text(
                    "My education has been a journey of self-discovery and growth. My educational details are as follows.",
                    style: TextStyles.sectionSubTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                constraints: BoxConstraints(
                  maxWidth: _homeViewModel.isMobileView.value? 350:  650,
                ),
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: _educationViewModel.educationList.map((education) {
                    return EducationCard(
                      education: education,
                      maxWidth: 600,
                    );
                  }).toList(),
                ),
              ),

              // Footer Section
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(16.0),
                color: AppColors.backgroundColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Name
                    Text(
                      "${AboutViewModel.fName} ${AboutViewModel.lName}",
                      style: TextStyles.handwrittenNameTextStyle.copyWith(fontSize: 24),
                    ),
                    const SizedBox(height: 20),
                    // Navigation links (About, Skills, Experience, etc.)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _navbarViewModel.getNavItems(),
                    ),
                    const SizedBox(height: 20),
                    // Social media icons (Facebook, LinkedIn, GitHub, Email)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: AboutViewModel.socials,
                    ),
                    const SizedBox(height: 20),
                    // Footer credit
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "This portfolio is created in flutter by ",
                          style: TextStyles.white70_12,
                        ),
                        InkWell(
                          onTap: (){
                            //TODO: add link
                          },
                          child: Text(
                            'Junaid ',
                            style: TextStyles.handwrittenNameTextStyle,
                          ),
                        ),
                        Text(
                          "under supervision of ",
                          style: TextStyles.white70_12,
                        ),
                        InkWell(
                          onTap: (){
                            //TODO: add link
                          },
                          child: Text(
                            'Qasim ',
                            style: TextStyles.handwrittenNameTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
