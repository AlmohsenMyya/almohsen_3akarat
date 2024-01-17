import '../controller/home_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeContainerScreen.
///
/// This class ensures that the HomeContainerController is created when the
/// HomeContainerScreen is first loaded.
class HomeContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeContainerController());
  }
}
