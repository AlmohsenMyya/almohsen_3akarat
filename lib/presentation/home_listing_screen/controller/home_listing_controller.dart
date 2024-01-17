import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/home_listing_screen/models/home_listing_model.dart';/// A controller class for the HomeListingScreen.
///
/// This class manages the state of the HomeListingScreen, including the
/// current homeListingModelObj
class HomeListingController extends GetxController {Rx<HomeListingModel> homeListingModelObj = HomeListingModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.homeListingSateliteScreen, ); } 
 }
