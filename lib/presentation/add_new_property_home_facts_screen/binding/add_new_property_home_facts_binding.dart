import '../controller/add_new_property_home_facts_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddNewPropertyHomeFactsScreen.
///
/// This class ensures that the AddNewPropertyHomeFactsController is created when the
/// AddNewPropertyHomeFactsScreen is first loaded.
class AddNewPropertyHomeFactsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyHomeFactsController());
  }
}
