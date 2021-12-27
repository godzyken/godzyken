import 'package:get/get.dart';

import 'package:godzyken/app/middleware/auth_middleware.dart';
import 'package:godzyken/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:godzyken/app/modules/dashboard/views/dashboard_view.dart';
import 'package:godzyken/app/modules/decision_add/bindings/decision_add_binding.dart';
import 'package:godzyken/app/modules/decision_add/views/decision_add_view.dart';
import 'package:godzyken/app/modules/decision_book/bindings/decision_book_binding.dart';
import 'package:godzyken/app/modules/decision_book/views/decision_book_view.dart';
import 'package:godzyken/app/modules/decision_details/bindings/decision_details_binding.dart';
import 'package:godzyken/app/modules/decision_details/views/decision_details_view.dart';
import 'package:godzyken/app/modules/home/bindings/home_binding.dart';
import 'package:godzyken/app/modules/home/views/home_view.dart';
import 'package:godzyken/app/modules/login/bindings/login_binding.dart';
import 'package:godzyken/app/modules/login/views/login_view.dart';
import 'package:godzyken/app/modules/my_crypto/bindings/my_crypto_binding.dart';
import 'package:godzyken/app/modules/my_crypto/views/my_crypto_view.dart';
import 'package:godzyken/app/modules/product_details/bindings/product_details_binding.dart';
import 'package:godzyken/app/modules/product_details/views/product_details_view.dart';
import 'package:godzyken/app/modules/products/bindings/products_binding.dart';
import 'package:godzyken/app/modules/products/views/products_view.dart';
import 'package:godzyken/app/modules/profile/bindings/profile_binding.dart';
import 'package:godzyken/app/modules/profile/views/profile_view.dart';
import 'package:godzyken/app/modules/root/bindings/root_binding.dart';
import 'package:godzyken/app/modules/root/views/root_view.dart';
import 'package:godzyken/app/modules/settings/bindings/settings_binding.dart';
import 'package:godzyken/app/modules/settings/views/settings_view.dart';
import 'package:godzyken/app/modules/user_model/bindings/user_model_binding.dart';
import 'package:godzyken/app/modules/user_model/views/user_model_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: '/',
        page: () => RootView(),
        binding: RootBinding(),
        participatesInRootNavigator: true,
        preventDuplicates: true,
        children: [
          GetPage(
            middlewares: [
              EnsureNotAuthedMiddleware(),
            ],
            name: _Paths.LOGIN,
            page: () => LoginView(),
            binding: LoginBinding(),
            transition: Transition.fade,
          ),
          GetPage(
              name: _Paths.HOME,
              page: () => const HomeView(),
              binding: HomeBinding(),
              title: null,
              preventDuplicates: true,
              children: [
                GetPage(
                  name: _Paths.DASHBOARD,
                  page: () => DashboardView(),
                  binding: DashboardBinding(),
                  transition: Transition.fade,
                ),
                GetPage(
                    name: _Paths.PROFILE,
                    page: () => ProfileView(),
                    title: 'Profile',
                    binding: ProfileBinding(),
                    transition: Transition.zoom,
                    children: [
                      GetPage(
                        name: _Paths.USER_MODEL,
                        page: () => UserModelView(),
                        binding: UserModelBinding(),
                        middlewares: [EnsureAuthMiddleware()],
                      ),
                    ]),
                GetPage(
                    name: _Paths.PRODUCTS,
                    page: () => ProductsView(),
                    binding: ProductsBinding(),
                    title: 'Products',
                    transition: Transition.zoom,
                    children: [
                      GetPage(
                          name: _Paths.PRODUCT_DETAILS,
                          page: () => ProductDetailsView(),
                          binding: ProductDetailsBinding(),
                          middlewares: [
                            EnsureAuthMiddleware(),
                          ]),
                    ]),
                GetPage(
                  name: _Paths.MY_CRYPTO,
                  page: () => MyCryptoView(),
                  binding: MyCryptoBinding(),
                ),
                GetPage(
                    name: _Paths.DECISION_BOOK,
                    page: () => DecisionBookView(),
                    binding: DecisionBookBinding(),
                    children: [
                      GetPage(
                        name: _Paths.DECISION_DETAILS,
                        page: () => DecisionDetailsView(),
                        binding: DecisionDetailsBinding(),
                      ),
                      GetPage(
                        name: _Paths.DECISION_ADD,
                        page: () => DecisionAddView(),
                        binding: DecisionAddBinding(),
                      ),
                    ]),
              ]),
          GetPage(
            name: _Paths.SETTINGS,
            page: () => SettingsView(),
            binding: SettingsBinding(),
          ),
        ]),
  ];
}
