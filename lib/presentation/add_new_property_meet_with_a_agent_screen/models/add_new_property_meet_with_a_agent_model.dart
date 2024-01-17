import '../../../core/app_export.dart';import 'time_item_model.dart';/// This class defines the variables used in the [add_new_property_meet_with_a_agent_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddNewPropertyMeetWithAAgentModel {Rx<List<TimeItemModel>> timeItemList = Rx([TimeItemModel(time: "9:00 AM".obs),TimeItemModel(time: "9:30 AM".obs),TimeItemModel(time: "10:00 AM".obs),TimeItemModel(time: "10:30 AM".obs)]);

 }
