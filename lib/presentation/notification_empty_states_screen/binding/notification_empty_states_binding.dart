import '../controller/notification_empty_states_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NotificationEmptyStatesScreen.
///
/// This class ensures that the NotificationEmptyStatesController is created when the
/// NotificationEmptyStatesScreen is first loaded.
class NotificationEmptyStatesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationEmptyStatesController());
  }
}
