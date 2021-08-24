part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  Routes._();

  static const HOME = _Paths.HOME;
  static const TEST = _Paths.HOME + _Paths.TEST;
  static String prodoucDetails(String productId) => '$TEST/$productId';
}

abstract class _Paths {
  static const HOME = '/home';
  static const TEST = '/test';
  static const PRODUCT_DETAILS = '/:productId';
}
