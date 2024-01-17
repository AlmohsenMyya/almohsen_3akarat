import 'controller/sign_in_controller.dart';import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/core/utils/validation_functions.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_subtitle.dart';import 'package:almohsen_3akarat/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_3akarat/widgets/custom_elevated_button.dart';import 'package:almohsen_3akarat/widgets/custom_outlined_button.dart';import 'package:almohsen_3akarat/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:almohsen_3akarat/domain/googleauth/google_auth_helper.dart';import 'package:almohsen_3akarat/domain/facebookauth/facebook_auth_helper.dart';
// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {SignInScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("msg_sign_in_to_your".tr, style: theme.textTheme.bodyLarge)), SizedBox(height: 38.v), _buildPhoneNumber(), SizedBox(height: 16.v), _buildPassword(), SizedBox(height: 24.v), _buildSignIn(), SizedBox(height: 26.v), Text("msg_forgot_password".tr, style: CustomTextStyles.titleSmallBluegray500_1), Spacer(), Text("msg_or_continue_with".tr, style: theme.textTheme.bodyLarge), SizedBox(height: 24.v), _buildGoogle(), SizedBox(height: 12.v), _buildFacebook(), SizedBox(height: 25.v), Padding(padding: EdgeInsets.symmetric(horizontal: 41.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_don_t_have_an_account".tr, style: theme.textTheme.bodyLarge)), GestureDetector(onTap: () {onTapTxtSignUp();}, child: Padding(padding: EdgeInsets.only(left: 4.h), child: Text("lbl_sign_up".tr, style: CustomTextStyles.titleMediumPrimary)))])), SizedBox(height: 60.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(title: AppbarSubtitle(text: "lbl_welcome_back".tr, margin: EdgeInsets.only(left: 24.h))); } 
/// Section Widget
Widget _buildPhoneNumber() { return CustomTextFormField(controller: controller.phoneNumberController, hintText: "lbl_phone_number".tr, textInputType: TextInputType.phone, validator: (value) {if (!isValidPhone(value)) {return "err_msg_please_enter_valid_phone_number".tr;} return null;}); } 
/// Section Widget
Widget _buildPassword() { return Obx(() => CustomTextFormField(controller: controller.passwordController, hintText: "lbl_password".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 14.h, 14.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 20.adaptSize, width: 20.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 49.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: controller.isShowPassword.value, contentPadding: EdgeInsets.only(left: 14.h, top: 14.v, bottom: 14.v))); } 
/// Section Widget
Widget _buildSignIn() { return CustomElevatedButton(text: "lbl_sign_in".tr); } 
/// Section Widget
Widget _buildGoogle() { return CustomOutlinedButton(text: "lbl_google".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgGoogle, height: 24.adaptSize, width: 24.adaptSize)), onPressed: () {onTapGoogle();}); } 
/// Section Widget
Widget _buildFacebook() { return CustomOutlinedButton(text: "lbl_facebook".tr, leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgFacebook, height: 24.adaptSize, width: 24.adaptSize)), onPressed: () {onTapFacebook();}); } 
onTapGoogle() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        }).catchError((onError) {
            Get.snackbar('Error', onError.toString());
        });
         } 
onTapFacebook() async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              Get.snackbar('Error', onError.toString());
            });
             } 
/// Navigates to the signUpScreen when the action is triggered.
onTapTxtSignUp() { Get.toNamed(AppRoutes.signUpScreen, ); } 
 }
