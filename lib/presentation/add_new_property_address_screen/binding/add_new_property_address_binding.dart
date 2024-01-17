import '../controller/add_new_property_address_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddNewPropertyAddressScreen.
///
/// This class ensures that the AddNewPropertyAddressController is created when the
/// AddNewPropertyAddressScreen is first loaded.
class AddNewPropertyAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyAddressController());
  }
}
