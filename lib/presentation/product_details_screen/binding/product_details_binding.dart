import '../controller/product_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductDetailsScreen.
///
/// This class ensures that the ProductDetailsController is created when the
/// ProductDetailsScreen is first loaded.
class ProductDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDetailsController());
  }
}
