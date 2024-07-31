import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/widgets/error.dart';
import 'package:whatsapp_clone/screens/chat/chat_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case ChatScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const ChatScreen(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorText(error: 'This page doesn\'t exists'),
        ),
      );
  }
}
