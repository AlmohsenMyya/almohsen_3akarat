import '../controller/past_tours_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PastToursScreen.
///
/// This class ensures that the PastToursController is created when the
/// PastToursScreen is first loaded.
class PastToursBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PastToursController());
  }
}
