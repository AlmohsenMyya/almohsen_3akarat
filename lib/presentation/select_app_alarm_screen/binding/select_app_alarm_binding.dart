import '../controller/select_app_alarm_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectAppAlarmScreen.
///
/// This class ensures that the SelectAppAlarmController is created when the
/// SelectAppAlarmScreen is first loaded.
class SelectAppAlarmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectAppAlarmController());
  }
}
