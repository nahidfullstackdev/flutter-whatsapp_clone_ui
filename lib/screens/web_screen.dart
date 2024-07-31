import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chat/chat_screen.dart';

import 'package:whatsapp_clone/screens/chat/widgets/contact_list.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                  width: screenSize.width / 3,
                  height: screenSize.height,
                  child: const ContactList()),
              const Expanded(child: ChatScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
