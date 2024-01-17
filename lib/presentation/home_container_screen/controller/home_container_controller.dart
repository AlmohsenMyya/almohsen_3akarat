import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/home_container_screen/models/home_container_model.dart';/// A controller class for the HomeContainerScreen.
///
/// This class manages the state of the HomeContainerScreen, including the
/// current homeContainerModelObj
class HomeContainerController extends GetxController {var token = Get.arguments[NavigationArgs.token];

var id = Get.arguments[NavigationArgs.id];

Rx<HomeContainerModel> homeContainerModelObj = HomeContainerModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.productDetailsScreen, );Get.toNamed(AppRoutes.productDetailsScreen, );Get.toNamed(AppRoutes.notificationScreen, ); } 
 }
