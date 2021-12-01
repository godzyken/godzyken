part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  Routes._();

  static const HOME = _Paths.HOME;
  static const PROFILE = _Paths.HOME + _Paths.PROFILE;
  static const PRODUCTS = _Paths.HOME + _Paths.PRODUCTS;
  static const DASHBOARD = _Paths.HOME + _Paths.DASHBOARD;
  static const SETTINGS = _Paths.SETTINGS;
  static const LOGIN = _Paths.LOGIN;

  static String LOGIN_THEN(String? afterSuccessfulLogin) =>
      '$LOGIN?then=${Uri.encodeQueryComponent(afterSuccessfulLogin!)}';

  static String PRODUCT_DETAILS(String? productId) => '$PRODUCTS/$productId';

  static String USER_MODEL(String? userId) => '$PROFILE/$userId';

}

abstract class _Paths {
  static const HOME = '/home';
  static const PROFILE = '/profile';
  static const USER_MODEL = '/:userId';
  static const PRODUCTS = '/products';
  static const PRODUCT_DETAILS = '/:productId';
  static const SETTINGS = '/settings';
  static const LOGIN = '/login';
  static const DASHBOARD = '/dashboard';
}
