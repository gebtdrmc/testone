import '../controller/chats_1_chats_and_inbox_controller.dart';
import 'package:get/get.dart';

class Chats1ChatsAndInboxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Chats1ChatsAndInboxController());
  }
}
