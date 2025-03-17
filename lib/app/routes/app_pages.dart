import 'package:get/get.dart';

import '../modules/authentication/bindings/authentication_binding.dart';
import '../modules/authentication/views/authentication_view.dart';
import '../modules/detailedcategory/bindings/detailedcategory_binding.dart';
import '../modules/detailedcategory/views/detailedcategory_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splashscreen/bindings/splashscreen_binding.dart';
import '../modules/splashscreen/views/splashscreen_view.dart';
import '../modules/startpage/bindings/startpage_binding.dart';
import '../modules/startpage/views/startpage_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => const SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => const AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: _Paths.STARTPAGE,
      page: () => const StartpageView(),
      binding: StartpageBinding(),
    ),
    GetPage(
      name: _Paths.DETAILEDCATEGORY,
      page: () => const DetailedcategoryView(),
      binding: DetailedcategoryBinding(),
    ),
  ];
}
