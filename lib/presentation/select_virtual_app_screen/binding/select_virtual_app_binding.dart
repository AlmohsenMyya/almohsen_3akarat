import '../controller/select_virtual_app_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectVirtualAppScreen.
///
/// This class ensures that the SelectVirtualAppController is created when the
/// SelectVirtualAppScreen is first loaded.
class SelectVirtualAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectVirtualAppController());
  }
}
