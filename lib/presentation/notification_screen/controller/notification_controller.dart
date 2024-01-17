import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/notification_screen/models/notification_model.dart';/// A controller class for the NotificationScreen.
///
/// This class manages the state of the NotificationScreen, including the
/// current notificationModelObj
class NotificationController extends GetxController {Rx<NotificationModel> notificationModelObj = NotificationModel().obs;

 }
