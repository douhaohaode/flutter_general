import 'package:flutter_general_project/module/details/details_bind.dart';
import 'package:flutter_general_project/module/details/details_page.dart';
import 'package:flutter_general_project/module/home/home_bind.dart';
import 'package:flutter_general_project/module/home/home_page.dart';
import 'package:flutter_general_project/module/login/login_bind.dart';
import 'package:flutter_general_project/module/login/login_page.dart';
import 'package:flutter_general_project/module/root/root_page.dart';
import 'package:flutter_general_project/module/spalsh/splash_bind.dart';
import 'package:flutter_general_project/module/spalsh/splash_page.dart';
import 'package:get/get.dart';


class AppPages {
  static final routes = [
      GetPage(
        name: '/',
        page: () => RootPage(),
        participatesInRootNavigator: true,
        children: [
          GetPage(
            name: '/splash',
            page: () => SplashPage(),
            binding: SplashBinding(),
          ),
          GetPage(
            name: '/login',
            page: () => LoginPage(),
            binding: LoginBinding(),
          ),
          GetPage(
            name: '/home',
            page: () => HomePage(),
            binding: HomeBinding(),
            transition: Transition.zoom,
            // children: [
            //   GetPage(
            //     name: '/:products',
            //     page: () => DeatilsPage(),
            //     binding: DetailsBinding(),
            //     // middlewares: [
            //     //   // EnsureAuthMiddleware(),
            //     // ],
            //   ),
            // ],
          ),
          // GetPage(
          //   name: '/productId',
          //   page: () => DeatilsPage(),
          //   binding: DetailsBinding(),
          //   // middlewares: [
          //   //   // EnsureAuthMiddleware(),
          //   // ],
          // ),
        ],
      ),
      // GetPage(
      //   name: '/404',
      //   page: () => const NotFoundView(),
      // ),
  ];

  //static String PRODUCT_DETAILS(String productId) => '/home/:productId/$productId';

  static String product(String productId) => '/home/products/$productId';


}
