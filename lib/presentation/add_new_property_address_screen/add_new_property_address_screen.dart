import 'controller/add_new_property_address_controller.dart';import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/core/utils/validation_functions.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_subtitle_two.dart';import 'package:almohsen_3akarat/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_3akarat/widgets/custom_drop_down.dart';import 'package:almohsen_3akarat/widgets/custom_elevated_button.dart';import 'package:almohsen_3akarat/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class AddNewPropertyAddressScreen extends GetWidget<AddNewPropertyAddressController> {AddNewPropertyAddressScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildAddressAndProgress(), SizedBox(height: 16.v), Container(height: 6.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.12, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary)))), SizedBox(height: 26.v), Text("msg_property_address".tr, style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 13.v), _buildAddress(), SizedBox(height: 12.v), _buildInputFields(), SizedBox(height: 12.v), _buildName(), SizedBox(height: 12.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 14.h, 14.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownPrimarycontainer, height: 20.adaptSize, width: 20.adaptSize)), hintText: "lbl_select".tr, hintStyle: CustomTextStyles.titleSmallBluegray500Medium, items: controller.addNewPropertyAddressModelObj.value.dropdownItemList!.value, borderDecoration: DropDownStyleHelper.fillGray, fillColor: appTheme.gray300, onChanged: (value) {controller.onSelected(value);}), SizedBox(height: 12.v), _buildZipcode(), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildBtn())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_add_new_property".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildButton() { return CustomElevatedButton(height: 33.v, width: 76.h, text: "lbl_01_08".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL16, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700); } 
/// Section Widget
Widget _buildAddressAndProgress() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 7.v, bottom: 5.v), child: Text("lbl_address".tr, style: theme.textTheme.titleSmall)), _buildButton()]); } 
/// Section Widget
Widget _buildAddress() { return CustomTextFormField(controller: controller.addressController, hintText: "lbl_street_address".tr); } 
/// Section Widget
Widget _buildInputFields() { return CustomTextFormField(controller: controller.inputFieldsController, hintText: "lbl_unit_number".tr, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;}); } 
/// Section Widget
Widget _buildName() { return CustomTextFormField(controller: controller.nameController, hintText: "lbl_city_name".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}); } 
/// Section Widget
Widget _buildZipcode() { return CustomTextFormField(controller: controller.zipcodeController, hintText: "lbl_zip_code".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;}); } 
/// Section Widget
Widget _buildNext() { return CustomElevatedButton(text: "lbl_next".tr, onPressed: () {onTapNext();}); } 
/// Section Widget
Widget _buildBtn() { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: _buildNext()); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the addNewPropertyMeetWithAAgentScreen when the action is triggered.
onTapNext() { Get.toNamed(AppRoutes.addNewPropertyMeetWithAAgentScreen, ); } 
 }
