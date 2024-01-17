import '../select_virtual_app_screen/widgets/selectvirtualapp_item_widget.dart';import 'controller/select_virtual_app_controller.dart';import 'models/selectvirtualapp_item_model.dart';import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_subtitle_two.dart';import 'package:almohsen_3akarat/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_3akarat/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';class SelectVirtualAppScreen extends GetWidget<SelectVirtualAppController> {const SelectVirtualAppScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 24.v), _buildSelectVirtualApp(), Spacer()])), bottomNavigationBar: _buildBtn())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_select_virtual_app".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildSelectVirtualApp() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.selectVirtualAppModelObj.value.selectvirtualappItemList.value.length, itemBuilder: (context, index) {SelectvirtualappItemModel model = controller.selectVirtualAppModelObj.value.selectvirtualappItemList.value[index]; return SelectvirtualappItemWidget(model);}))); } 
/// Section Widget
Widget _buildBtn() { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: CustomElevatedButton(text: "lbl_next".tr, onPressed: () {onTapNext();})); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the selectAppAlarmScreen when the action is triggered.
onTapNext() { Get.toNamed(AppRoutes.selectAppAlarmScreen, ); } 
 }
