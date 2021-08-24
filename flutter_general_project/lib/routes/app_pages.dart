import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_general_project/module/details/details_bind.dart';
import 'package:flutter_general_project/module/details/details_page.dart';
import 'package:flutter_general_project/module/home/home_bind.dart';
import 'package:flutter_general_project/module/home/home_page.dart';
import 'package:flutter_general_project/module/login/login_bind.dart';
import 'package:flutter_general_project/module/login/login_page.dart';
import 'package:flutter_general_project/module/main/main_bind.dart';
import 'package:flutter_general_project/module/main/main_page.dart';
import 'package:flutter_general_project/module/root/root_page.dart';
import 'package:flutter_general_project/module/spalsh/splash_bind.dart';
import 'package:flutter_general_project/module/spalsh/splash_page.dart';
import 'package:flutter_general_project/servier/data_servier.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: '/',
      page: () => RootPage(),
      participatesInRootNavigator: true,
      middlewares: [
        ForceNavigateToRouteMiddleware(from: '/', to: '/splash'),
      ],
      children: [
        GetPage(
          name: '/splash',
          page: () => SplashPage(),
          binding: SplashBinding(),
        ),
        GetPage(
          middlewares: [
            EnsureNotAuthedMiddleware(),
          ],
          name: '/login',
          page: () => LoginPage(),
          binding: LoginBinding(),

        ),
        GetPage(
          name: '/home',
          page: () => HomePage(),
          binding: HomeBinding(),
          transition: Transition.zoom,
          children: [
            GetPage(
              name: '/test',
              page: () => MainPage(),
              binding: MainBinding(),
              transition: Transition.zoom,
              children: [
                GetPage(
                  name: _Paths.PRODUCT_DETAILS,
                  page: () => DeatilsPage(),
                  binding: DetailsBinding(),
                  transition: Transition.zoom,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    GetPage(
        name: '/404',
        page: () => NotFoundView(),
        transition: Transition.fadeIn,
        transitionDuration: Duration(milliseconds: 300)),
  ];
}


class EnsureNotAuthedMiddleware extends GetMiddleware {

  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    if(DataService.to.isLoggedIn.value == true){
      return null;
    }
    return route;
  }
}


class ForceNavigateToRouteMiddleware extends GetMiddleware {
  final String from;
  final String to;

  ForceNavigateToRouteMiddleware({
    required this.from,
    required this.to,
  });

  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    var pos = route.currentTreeBranch.indexWhere((p) => p.name == route.location);
    if (pos == -1) {
      return GetNavConfig.fromRoute('/404');
    }
    if (route.location == from) {
      return GetNavConfig.fromRoute(to);
    }
    return route;
  }
}

class NotFoundView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('404'),
        ],
      ),
    );
  }
}