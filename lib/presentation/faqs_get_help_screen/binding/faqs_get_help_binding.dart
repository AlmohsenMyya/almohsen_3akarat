import '../controller/faqs_get_help_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FaqsGetHelpScreen.
///
/// This class ensures that the FaqsGetHelpController is created when the
/// FaqsGetHelpScreen is first loaded.
class FaqsGetHelpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FaqsGetHelpController());
  }
}
