import 'package:get/get.dart';
import 'details_controller.dart';

/* HOME */
class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    // Get.create<DetailsController>(
    //       () => DetailsController(
    //     Get.parameters['productId'] ?? '',
    //   ),
    // );
    Get.lazyPut<DetailsController>(
          () => DetailsController(Get.parameters['productId'] ?? ''),
    );
  }
}

