import '../controller/confirm_request_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ConfirmRequestScreen.
///
/// This class ensures that the ConfirmRequestController is created when the
/// ConfirmRequestScreen is first loaded.
class ConfirmRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmRequestController());
  }
}
