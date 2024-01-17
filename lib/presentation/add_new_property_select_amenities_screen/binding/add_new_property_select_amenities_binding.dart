import '../controller/add_new_property_select_amenities_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddNewPropertySelectAmenitiesScreen.
///
/// This class ensures that the AddNewPropertySelectAmenitiesController is created when the
/// AddNewPropertySelectAmenitiesScreen is first loaded.
class AddNewPropertySelectAmenitiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertySelectAmenitiesController());
  }
}
