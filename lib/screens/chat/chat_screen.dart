import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/widgets/colors.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/screens/chat/widgets/chat_list.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  static const routeName = '/chat-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info[0]['name'].toString()),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 16, left: 12, right: 12, top: 8),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: mobileChatBoxColor,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.send,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                hintText: 'Type a message!',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
