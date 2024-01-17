import '../controller/verify_phone_number_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerifyPhoneNumberScreen.
///
/// This class ensures that the VerifyPhoneNumberController is created when the
/// VerifyPhoneNumberScreen is first loaded.
class VerifyPhoneNumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyPhoneNumberController());
  }
}
