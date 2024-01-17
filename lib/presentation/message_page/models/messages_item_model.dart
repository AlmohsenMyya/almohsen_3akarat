import '../../../core/app_export.dart';/// This class is used in the [messages_item_widget] screen.
class MessagesItemModel {MessagesItemModel({this.wadeWarren, this.wadeWarren1, this.message, this.time, this.id, }) { wadeWarren = wadeWarren  ?? Rx(ImageConstant.imgImg48x48);wadeWarren1 = wadeWarren1  ?? Rx("Wade Warren");message = message  ?? Rx("Oh hello Willam...");time = time  ?? Rx("23:15");id = id  ?? Rx(""); }

Rx<String>? wadeWarren;

Rx<String>? wadeWarren1;

Rx<String>? message;

Rx<String>? time;

Rx<String>? id;

 }
