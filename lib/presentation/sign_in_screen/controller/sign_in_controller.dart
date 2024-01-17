import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/sign_in_screen/models/sign_in_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignInScreen.
///
/// This class manages the state of the SignInScreen, including the
/// current signInModelObj
class SignInController extends GetxController {TextEditingController phoneNumberController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignInModel> signInModelObj = SignInModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); phoneNumberController.dispose(); passwordController.dispose(); } 
 }
