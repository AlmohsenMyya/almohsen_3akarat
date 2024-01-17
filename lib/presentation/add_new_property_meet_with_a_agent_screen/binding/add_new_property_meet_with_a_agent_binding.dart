import '../controller/add_new_property_meet_with_a_agent_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddNewPropertyMeetWithAAgentScreen.
///
/// This class ensures that the AddNewPropertyMeetWithAAgentController is created when the
/// AddNewPropertyMeetWithAAgentScreen is first loaded.
class AddNewPropertyMeetWithAAgentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewPropertyMeetWithAAgentController());
  }
}
