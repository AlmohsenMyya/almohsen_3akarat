import '../controller/add_new_property_time_to_sell_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddNewPropertyTimeToSellScreen.
///
/// This class ensures that the AddNewPropertyTimeToSellController is created when the
/// AddNewPropertyTimeToSellScreen is first loaded.
class AddNewPropertyTimeToSellBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyTimeToSellController());
  }
}
