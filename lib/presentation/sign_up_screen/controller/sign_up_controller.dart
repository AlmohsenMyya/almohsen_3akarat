import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/sign_up_screen/models/sign_up_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); fullNameController.dispose(); phoneNumberController.dispose(); passwordController.dispose(); } 
 }
