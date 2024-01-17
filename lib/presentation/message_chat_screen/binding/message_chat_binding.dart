import '../controller/message_chat_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MessageChatScreen.
///
/// This class ensures that the MessageChatController is created when the
/// MessageChatScreen is first loaded.
class MessageChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageChatController());
  }
}
