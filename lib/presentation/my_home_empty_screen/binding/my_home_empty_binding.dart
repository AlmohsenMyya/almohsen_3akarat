import '../controller/my_home_empty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyHomeEmptyScreen.
///
/// This class ensures that the MyHomeEmptyController is created when the
/// MyHomeEmptyScreen is first loaded.
class MyHomeEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyHomeEmptyController());
  }
}
