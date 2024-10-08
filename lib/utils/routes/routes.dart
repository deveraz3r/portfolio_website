import '/utils/app_urls.dart';

class Routes {

  //GetX route binding
  static appRoutes() => [
    GetPage(name: RouteName.home, page: () => HomeView()),
  ];

}