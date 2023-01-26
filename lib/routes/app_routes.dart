import 'package:geok_en_s_application7/presentation/chats_1_chats_and_inbox_screen/chats_1_chats_and_inbox_screen.dart';
import 'package:geok_en_s_application7/presentation/chats_1_chats_and_inbox_screen/binding/chats_1_chats_and_inbox_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String chats1ChatsAndInboxScreen =
      '/chats_1_chats_and_inbox_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: chats1ChatsAndInboxScreen,
      page: () => Chats1ChatsAndInboxScreen(),
      bindings: [
        Chats1ChatsAndInboxBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => Chats1ChatsAndInboxScreen(),
      bindings: [
        Chats1ChatsAndInboxBinding(),
      ],
    )
  ];
}
