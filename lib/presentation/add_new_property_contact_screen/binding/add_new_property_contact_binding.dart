import '../controller/add_new_property_contact_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddNewPropertyContactScreen.
///
/// This class ensures that the AddNewPropertyContactController is created when the
/// AddNewPropertyContactScreen is first loaded.
class AddNewPropertyContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyContactController());
  }
}
