import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/pick_date_screen/models/pick_date_model.dart';import 'package:easy_date_timeline/easy_date_timeline.dart';/// A controller class for the PickDateScreen.
///
/// This class manages the state of the PickDateScreen, including the
/// current pickDateModelObj
class PickDateController extends GetxController {Rx<PickDateModel> pickDateModelObj = PickDateModel().obs;

Rx<DateTime> selectedDatesFromCalendar1 = DateTime.now().obs;

 }
