import '../add_new_property_reason_selling_home_screen/widgets/addnewpropertyreasonsellinghome_item_widget.dart';import 'controller/add_new_property_reason_selling_home_controller.dart';import 'models/addnewpropertyreasonsellinghome_item_model.dart';import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_subtitle_two.dart';import 'package:almohsen_3akarat/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_3akarat/widgets/custom_checkbox_button.dart';import 'package:almohsen_3akarat/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';class AddNewPropertyReasonSellingHomeScreen extends GetWidget<AddNewPropertyReasonSellingHomeController> {const AddNewPropertyReasonSellingHomeScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildAddressAndProgress(), SizedBox(height: 16.v), Container(height: 6.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.5, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary)))), SizedBox(height: 26.v), Text("msg_why_are_you_selling".tr, style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 13.v), _buildAddNewPropertyReasonSellingHome(), SizedBox(height: 8.v), _buildStreetAddress(), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBtn())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_add_new_property".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildAddressAndProgress() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 8.v, bottom: 4.v), child: Text("msg_reason_selling_home".tr, style: theme.textTheme.titleSmall)), CustomElevatedButton(height: 33.v, width: 79.h, text: "lbl_04_08".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL16, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)]); } 
/// Section Widget
Widget _buildAddNewPropertyReasonSellingHome() { return Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 8.v);}, itemCount: controller.addNewPropertyReasonSellingHomeModelObj.value.addnewpropertyreasonsellinghomeItemList.value.length, itemBuilder: (context, index) {AddnewpropertyreasonsellinghomeItemModel model = controller.addNewPropertyReasonSellingHomeModelObj.value.addnewpropertyreasonsellinghomeItemList.value[index]; return AddnewpropertyreasonsellinghomeItemWidget(model);})); } 
/// Section Widget
Widget _buildStreetAddress() { return Container(padding: EdgeInsets.all(15.h), decoration: AppDecoration.outlineGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Obx(() => CustomCheckboxButton(text: "lbl_other".tr, value: controller.other.value, onChange: (value) {controller.other.value = value;})), SizedBox(height: 6.v), Padding(padding: EdgeInsets.only(left: 28.h), child: Text("msg_please_enter_your".tr, style: CustomTextStyles.bodySmallPrimaryContainer)), SizedBox(height: 10.v), Align(alignment: Alignment.centerRight, child: Container(width: 263.h, margin: EdgeInsets.only(left: 28.h, right: 4.h), padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v), decoration: AppDecoration.fillGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), Container(width: 210.h, margin: EdgeInsets.only(right: 28.h), child: Text("msg_e_g_i_m_helping".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall!.copyWith(height: 1.50)))])))])); } 
/// Section Widget
Widget _buildBtn() { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: CustomElevatedButton(text: "lbl_next".tr, onPressed: () {onTapNext();})); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the addNewPropertyDecsriptionScreen when the action is triggered.
onTapNext() { Get.toNamed(AppRoutes.addNewPropertyDecsriptionScreen, ); } 
 }