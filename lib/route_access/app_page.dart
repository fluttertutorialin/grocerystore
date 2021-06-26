/*
   DEVELOPED BY: KAMLESH LAKHANI
   FOR ROUTE MANAGE
*/

import '../ui/page/page_package.dart';
import '../binding/binding_package.dart';
import 'package:get/route_manager.dart';
part 'app_route.dart';

class AppPage {
  AppPage._();

  static final routes = [
    GetPage(
      name: AppRoute.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),

    GetPage(
        name: AppRoute.HOME,
        page: () => HomePage(),
        binding: HomeBinding()),

    GetPage(
        name: AppRoute.LOGIN,
        page: () => LoginPage(),
        binding: LoginBinding()),

    GetPage(
        name: AppRoute.SIGNUP,
        page: () => SignUpPage(),
        binding: SignUpBinding()),

    GetPage(
        name: AppRoute.ALL_CATEGORY,
        page: () => AllCategoryPage()),

    GetPage(
        name: AppRoute.VIEW_ALL,
        page: () => ViewAllPage()),

    GetPage(
        name: AppRoute.PRODUCT_DETAIL,
        page: () => ProductDetailPage()),

    GetPage(
        name: AppRoute.SETTINGS,
        page: () => SettingsPage()),

    GetPage(
        name: AppRoute.MY_ADDRESS,
        page: () => MyAddressPage()),

    GetPage(
        name: AppRoute.MY_ADDRESS,
        page: () => MyAddressPage()),

    GetPage(
        name: AppRoute.MY_ORDERS,
        page: () => MyOrdersPage()),

    GetPage(
        name: AppRoute.MY_FAVOURITES,
        page: () => MyFavouritesPage()),

    GetPage(
        name: AppRoute.MY_CART,
        page: () => MyCartPage()),

    GetPage(
        name: AppRoute.CHECKOUT,
        page: () => CheckOutPage()),

    GetPage(
        name: AppRoute.TRACK_ORDER,
        page: () => TrackOrderPage()),

    GetPage(
        name: AppRoute.SETTINGS_EDIT_PROFILE,
        page: () => SettingsEditProfilePage()),

    GetPage(
        name: AppRoute.OTP,
        page: () => OTPPage()),

    GetPage(
        name: AppRoute.NOTIFICATION,
        page: () => NotificationPage()),

    GetPage(
        binding: ChangePasswordBinding(),
        name: AppRoute.CHANGE_PASSWORD,
        page: () => ChangePasswordPage()),
  ];
}
