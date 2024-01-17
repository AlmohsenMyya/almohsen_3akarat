import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/verify_phone_number_screen/models/verify_phone_number_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';/// A controller class for the VerifyPhoneNumberScreen.
///
/// This class manages the state of the VerifyPhoneNumberScreen, including the
/// current verifyPhoneNumberModelObj
class VerifyPhoneNumberController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<VerifyPhoneNumberModel> verifyPhoneNumberModelObj = VerifyPhoneNumberModel().obs;

@override void codeUpdated() { otpController.value.text = code ?? ''; } 
@override void onInit() { super.onInit(); listenForCode(); } 
 }
