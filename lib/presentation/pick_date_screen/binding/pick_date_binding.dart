import '../controller/pick_date_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PickDateScreen.
///
/// This class ensures that the PickDateController is created when the
/// PickDateScreen is first loaded.
class PickDateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PickDateController());
  }
}
