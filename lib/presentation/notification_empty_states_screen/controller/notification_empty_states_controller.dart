import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/notification_empty_states_screen/models/notification_empty_states_model.dart';/// A controller class for the NotificationEmptyStatesScreen.
///
/// This class manages the state of the NotificationEmptyStatesScreen, including the
/// current notificationEmptyStatesModelObj
class NotificationEmptyStatesController extends GetxController {Rx<NotificationEmptyStatesModel> notificationEmptyStatesModelObj = NotificationEmptyStatesModel().obs;

 }
