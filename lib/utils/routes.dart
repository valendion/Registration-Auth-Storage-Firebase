import 'package:get/get_navigation/src/routes/get_route.dart';
import '../page/home_page.dart';
import '../page/login_page.dart';
import '../page/registration_page.dart';

class Routes {
  static List<GetPage<dynamic>>? getPages = [
    GetPage(name: LoginPage.nameRoute, page: () => const LoginPage()),
    GetPage(name: HomePage.nameRoute, page: () => const HomePage()),
    GetPage(
        name: RegistrationPage.nameRoute, page: () => const RegistrationPage()),
  ];
}
