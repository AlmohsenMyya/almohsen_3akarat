import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/past_tours_screen/models/past_tours_model.dart';/// A controller class for the PastToursScreen.
///
/// This class manages the state of the PastToursScreen, including the
/// current pastToursModelObj
class PastToursController extends GetxController {Rx<PastToursModel> pastToursModelObj = PastToursModel().obs;

Rx<bool> complete = false.obs;

 }
