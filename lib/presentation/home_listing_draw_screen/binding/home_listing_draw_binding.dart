import '../controller/home_listing_draw_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeListingDrawScreen.
///
/// This class ensures that the HomeListingDrawController is created when the
/// HomeListingDrawScreen is first loaded.
class HomeListingDrawBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeListingDrawController());
  }
}
