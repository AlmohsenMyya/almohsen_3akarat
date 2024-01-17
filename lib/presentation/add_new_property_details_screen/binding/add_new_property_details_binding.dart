import '../controller/add_new_property_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddNewPropertyDetailsScreen.
///
/// This class ensures that the AddNewPropertyDetailsController is created when the
/// AddNewPropertyDetailsScreen is first loaded.
class AddNewPropertyDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyDetailsController());
  }
}
