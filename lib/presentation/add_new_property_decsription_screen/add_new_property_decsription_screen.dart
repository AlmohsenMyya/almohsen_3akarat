import 'controller/add_new_property_decsription_controller.dart';import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_subtitle_two.dart';import 'package:almohsen_3akarat/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_3akarat/widgets/custom_elevated_button.dart';import 'package:almohsen_3akarat/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class AddNewPropertyDecsriptionScreen extends GetWidget<AddNewPropertyDecsriptionController> {const AddNewPropertyDecsriptionScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildAddressAndProgress(), SizedBox(height: 16.v), Container(height: 6.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.62, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary)))), SizedBox(height: 26.v), Text("msg_property_address".tr, style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 13.v), CustomTextFormField(controller: controller.addressController, hintText: "msg_tell_us_about_your".tr, textInputAction: TextInputAction.done), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBtn())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_add_new_property".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildAddressAndProgress() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 8.v, bottom: 4.v), child: Text("lbl_description".tr, style: theme.textTheme.titleSmall)), CustomElevatedButton(height: 33.v, width: 79.h, text: "lbl_05_08".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL16, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)]); } 
/// Section Widget
Widget _buildBtn() { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: CustomElevatedButton(text: "lbl_next".tr, onPressed: () {onTapNext();})); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the addNewPropertyHomeFactsScreen when the action is triggered.
onTapNext() { Get.toNamed(AppRoutes.addNewPropertyHomeFactsScreen, ); } 
 }
