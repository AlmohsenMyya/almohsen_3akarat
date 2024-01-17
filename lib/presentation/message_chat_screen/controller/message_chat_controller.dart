import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/message_chat_screen/models/message_chat_model.dart';import 'package:flutter/material.dart';/// A controller class for the MessageChatScreen.
///
/// This class manages the state of the MessageChatScreen, including the
/// current messageChatModelObj
class MessageChatController extends GetxController {TextEditingController typeMessageController = TextEditingController();

Rx<MessageChatModel> messageChatModelObj = MessageChatModel().obs;

@override void onClose() { super.onClose(); typeMessageController.dispose(); } 
/// Requests permission to access the camera and storage, and displays a model
/// sheet for selecting images.
///
/// Throws an error if permission is denied or an error occurs while selecting images.
onReady() async  { await PermissionManager.askForPermission(Permission.camera);await PermissionManager.askForPermission(Permission.storage);List<String?>? imageList = [];await FileManager().showModelSheetForImage(getImages: (value) async {imageList = value;}); } 
 }
