import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/add_new_property_meet_with_a_agent_screen/models/add_new_property_meet_with_a_agent_model.dart';import 'package:easy_date_timeline/easy_date_timeline.dart';/// A controller class for the AddNewPropertyMeetWithAAgentScreen.
///
/// This class manages the state of the AddNewPropertyMeetWithAAgentScreen, including the
/// current addNewPropertyMeetWithAAgentModelObj
class AddNewPropertyMeetWithAAgentController extends GetxController {Rx<AddNewPropertyMeetWithAAgentModel> addNewPropertyMeetWithAAgentModelObj = AddNewPropertyMeetWithAAgentModel().obs;

Rx<DateTime> selectedDatesFromCalendar1 = DateTime.now().obs;

 }
