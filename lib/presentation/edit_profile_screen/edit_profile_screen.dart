import 'controller/edit_profile_controller.dart';import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/core/utils/validation_functions.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_subtitle_two.dart';import 'package:almohsen_3akarat/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_3akarat/widgets/custom_elevated_button.dart';import 'package:almohsen_3akarat/widgets/custom_icon_button.dart';import 'package:almohsen_3akarat/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {EditProfileScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [GestureDetector(onTap: () {onTapTelevision();}, child: SizedBox(height: 100.adaptSize, width: 100.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle361100x100, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(50.h), alignment: Alignment.center), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.outlineGrayTL121, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgTelevisionGray50))]))), SizedBox(height: 33.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_full_name2".tr, style: theme.textTheme.labelLarge)), SizedBox(height: 7.v), _buildEditProfileFullName(), SizedBox(height: 17.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_email".tr, style: theme.textTheme.labelLarge)), SizedBox(height: 7.v), _buildEditProfileEmail(), SizedBox(height: 17.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_address".tr, style: theme.textTheme.labelLarge)), SizedBox(height: 7.v), _buildEditProfileAddress(), SizedBox(height: 17.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_password".tr, style: theme.textTheme.labelLarge)), SizedBox(height: 7.v), _buildEditProfilePassword(), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildBtn())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_edit_profile".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildEditProfileFullName() { return CustomTextFormField(controller: controller.editProfileFullNameController, hintText: "lbl_andrew_preston".tr); } 
/// Section Widget
Widget _buildEditProfileEmail() { return CustomTextFormField(controller: controller.editProfileEmailController, hintText: "lbl_test_gmail_com".tr, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;}); } 
/// Section Widget
Widget _buildEditProfileAddress() { return CustomTextFormField(controller: controller.editProfileAddressController, hintText: "msg_merta_nadi_street".tr); } 
/// Section Widget
Widget _buildEditProfilePassword() { return CustomTextFormField(controller: controller.editProfilePasswordController, hintText: "lbl_123456".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: true); } 
/// Section Widget
Widget _buildSaveChange() { return CustomElevatedButton(text: "lbl_save_change".tr); } 
/// Section Widget
Widget _buildBtn() { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: _buildSaveChange()); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Requests permission to access the camera and storage, and displays a model
/// sheet for selecting images.
///
/// Throws an error if permission is denied or an error occurs while selecting images.
onTapTelevision() async  { await PermissionManager.askForPermission(Permission.camera);await PermissionManager.askForPermission(Permission.storage);List<String?>? imageList = [];await FileManager().showModelSheetForImage(getImages: (value) async {imageList = value;}); } 
 }
