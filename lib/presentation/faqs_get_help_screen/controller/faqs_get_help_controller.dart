import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/faqs_get_help_screen/models/faqs_get_help_model.dart';import 'package:flutter/material.dart';/// A controller class for the FaqsGetHelpScreen.
///
/// This class manages the state of the FaqsGetHelpScreen, including the
/// current faqsGetHelpModelObj
class FaqsGetHelpController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<FaqsGetHelpModel> faqsGetHelpModelObj = FaqsGetHelpModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
