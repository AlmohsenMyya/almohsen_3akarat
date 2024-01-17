import '../controller/home_listing_satelite_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeListingSateliteScreen.
///
/// This class ensures that the HomeListingSateliteController is created when the
/// HomeListingSateliteScreen is first loaded.
class HomeListingSateliteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeListingSateliteController());
  }
}
