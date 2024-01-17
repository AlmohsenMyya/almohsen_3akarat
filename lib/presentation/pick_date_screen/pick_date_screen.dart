import '../pick_date_screen/widgets/time1_item_widget.dart';import 'controller/pick_date_controller.dart';import 'models/time1_item_model.dart';import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_3akarat/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_3akarat/widgets/custom_elevated_button.dart';import 'package:almohsen_3akarat/widgets/custom_icon_button.dart';import 'package:easy_date_timeline/easy_date_timeline.dart';import 'package:flutter/material.dart';class PickDateScreen extends GetWidget<PickDateController> {const PickDateScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 26.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 30.h), child: Text("msg_request_a_home_tour".tr, style: CustomTextStyles.titleMediumBold_1)), SizedBox(height: 13.v), _buildTabs(), SizedBox(height: 24.v), _buildTitle(), SizedBox(height: 16.v), _buildDates(), SizedBox(height: 32.v), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_pick_a_time".tr, style: CustomTextStyles.titleMediumBold_1)), SizedBox(height: 15.v), _buildTime()])), bottomNavigationBar: _buildBtn())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.fromLTRB(24.h, 8.v, 311.h, 8.v), onTap: () {onTapArrowLeft();})); } 
/// Section Widget
Widget _buildTabs() { return Align(alignment: Alignment.center, child: Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.all(4.h), decoration: AppDecoration.fillGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisSize: MainAxisSize.max, children: [Container(width: 159.h, padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 9.v), decoration: AppDecoration.outlineBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgHome, height: 20.adaptSize, width: 20.adaptSize), Padding(padding: EdgeInsets.only(right: 1.h), child: Text("lbl_in_person".tr, style: CustomTextStyles.titleSmallBold))])), Spacer(), CustomImageView(imagePath: ImageConstant.imgCamera, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v)), Padding(padding: EdgeInsets.fromLTRB(10.h, 10.v, 24.h, 9.v), child: Text("lbl_virtual".tr, style: CustomTextStyles.titleSmallBluegray500_1))]))); } 
/// Section Widget
Widget _buildTitle() { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 5.v), child: Text("lbl_january".tr, style: CustomTextStyles.titleMediumBold_1)), Spacer(), CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineGrayTL5, child: CustomImageView(imagePath: ImageConstant.imgArrowLeftPrimarycontainer)), Padding(padding: EdgeInsets.only(left: 16.h), child: CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineGrayTL5, child: CustomImageView(imagePath: ImageConstant.imgIcons)))]))); } 
/// Section Widget
Widget _buildDates() { return Align(alignment: Alignment.centerRight, child: SingleChildScrollView(scrollDirection: Axis.horizontal, padding: EdgeInsets.only(left: 24.h), child: IntrinsicWidth(child: Obx(() => SizedBox(height: 96.v, width: 368.h, child: EasyDateTimeLine(initialDate: controller.selectedDatesFromCalendar1.value, locale: 'en_US', headerProps: EasyHeaderProps(selectedDateFormat: SelectedDateFormat.fullDateDMY, monthPickerType: MonthPickerType.switcher, showHeader: false), dayProps: EasyDayProps(), onDateChange: (selectedDate) {controller.selectedDatesFromCalendar1.value = selectedDate;})))))); } 
/// Section Widget
Widget _buildTime() { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 41.v, child: Obx(() => ListView.separated(padding: EdgeInsets.only(left: 24.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 10.h);}, itemCount: controller.pickDateModelObj.value.time1ItemList.value.length, itemBuilder: (context, index) {Time1ItemModel model = controller.pickDateModelObj.value.time1ItemList.value[index]; return Time1ItemWidget(model);})))); } 
/// Section Widget
Widget _buildBtn() { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: CustomElevatedButton(text: "lbl_schedule_tour".tr, onPressed: () {onTapScheduleTour();})); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the verifyPhoneNumberScreen when the action is triggered.
onTapScheduleTour() { Get.toNamed(AppRoutes.verifyPhoneNumberScreen, ); } 
 }