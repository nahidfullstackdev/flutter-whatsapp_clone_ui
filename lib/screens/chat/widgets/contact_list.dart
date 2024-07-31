import 'package:flutter/material.dart';

import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/screens/chat/chat_screen.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ContactListState();
  }
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'All',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Unread',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Groups',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ListView.builder(
              itemCount: info.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(info[index]['name'].toString()),
                subtitle: Text(info[index]['message'].toString()),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    info[index]['profilePic'].toString(),
                  ),
                  radius: 30,
                ),
                trailing: Text(
                  info[index]['time'].toString(),
                  style: const TextStyle(fontSize: 13),
                ),
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(ChatScreen.routeName, arguments: info[index]);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
