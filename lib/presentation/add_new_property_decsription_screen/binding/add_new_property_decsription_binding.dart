import '../controller/add_new_property_decsription_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddNewPropertyDecsriptionScreen.
///
/// This class ensures that the AddNewPropertyDecsriptionController is created when the
/// AddNewPropertyDecsriptionScreen is first loaded.
class AddNewPropertyDecsriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyDecsriptionController());
  }
}
