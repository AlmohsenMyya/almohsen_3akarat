import '../controller/home_alarm_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeAlarmScreen.
///
/// This class ensures that the HomeAlarmController is created when the
/// HomeAlarmScreen is first loaded.
class HomeAlarmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeAlarmController());
  }
}
