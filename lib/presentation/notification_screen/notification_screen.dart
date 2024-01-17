import '../notification_screen/widgets/todaysection_item_widget.dart';import 'controller/notification_controller.dart';import 'models/todaysection_item_model.dart';import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_subtitle_two.dart';import 'package:almohsen_3akarat/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';import 'package:grouped_list/grouped_list.dart';class NotificationScreen extends GetWidget<NotificationController> {const NotificationScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Padding(padding: EdgeInsets.fromLTRB(24.h, 27.v, 24.h, 5.v), child: Obx(() => GroupedListView<TodaysectionItemModel, String>(shrinkWrap: true, stickyHeaderBackgroundColor: Colors.transparent, elements: controller.notificationModelObj.value.todaysectionItemList.value, groupBy: (element) => element.groupBy!.value, sort: false, groupSeparatorBuilder: (String value) {return Padding(padding: EdgeInsets.only(top: 22.v, bottom: 17.v), child: Column(children: [Text(value, style: CustomTextStyles.titleMediumBold.copyWith(color: theme.colorScheme.primaryContainer))]));}, itemBuilder: (context, model) {return TodaysectionItemWidget(model);}, separator: SizedBox(height: 14.v)))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_notification".tr), styleType: Style.bgFill); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
