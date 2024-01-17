import '../controller/home_listing_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeListingScreen.
///
/// This class ensures that the HomeListingController is created when the
/// HomeListingScreen is first loaded.
class HomeListingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeListingController());
  }
}
