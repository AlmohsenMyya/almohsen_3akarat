import '../message_page/widgets/messages_item_widget.dart';import 'controller/message_controller.dart';import 'models/message_model.dart';import 'models/messages_item_model.dart';import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_subtitle_two.dart';import 'package:almohsen_3akarat/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class MessagePage extends StatelessWidget {MessagePage({Key? key}) : super(key: key);

MessageController controller = Get.put(MessageController(MessageModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, decoration: AppDecoration.fillGray50, child: Column(children: [SizedBox(height: 34.v), _buildMessages(), Spacer()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_message".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildMessages() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 8.0.v), child: SizedBox(width: 327.h, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray300)));}, itemCount: controller.messageModelObj.value.messagesItemList.value.length, itemBuilder: (context, index) {MessagesItemModel model = controller.messageModelObj.value.messagesItemList.value[index]; return MessagesItemWidget(model, onTapMsg: () {onTapMsg();});}))); } 
/// Navigates to the messageChatScreen when the action is triggered.
onTapMsg() { Get.toNamed(AppRoutes.messageChatScreen); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
