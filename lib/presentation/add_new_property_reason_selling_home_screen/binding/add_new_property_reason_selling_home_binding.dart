import '../controller/add_new_property_reason_selling_home_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddNewPropertyReasonSellingHomeScreen.
///
/// This class ensures that the AddNewPropertyReasonSellingHomeController is created when the
/// AddNewPropertyReasonSellingHomeScreen is first loaded.
class AddNewPropertyReasonSellingHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyReasonSellingHomeController());
  }
}
