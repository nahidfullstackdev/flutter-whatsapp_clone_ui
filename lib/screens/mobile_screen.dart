import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/widgets/colors.dart';
import 'package:whatsapp_clone/screens/calls/call.dart';

import 'package:whatsapp_clone/screens/chat/widgets/contact_list.dart';
import 'package:whatsapp_clone/screens/communities/communities.dart';
import 'package:whatsapp_clone/screens/updates/update_screen.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MobileScreenState();
  }
}

class _MobileScreenState extends State<MobileScreen> {
  var _currentIndex = 0;

  List<Widget> body = [
    const ContactList(),
    const UpdateScreen(),
    const Communities(),
    const Call(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: _currentIndex == 0
              ? const Text(
                  'WhatsApp UI',
                  style: TextStyle(color: textColor),
                )
              : _currentIndex == 1
                  ? const Text(
                      'Updates',
                      style: TextStyle(color: textColor),
                    )
                  : _currentIndex == 2
                      ? const Text(
                          'Communities',
                          style: TextStyle(color: textColor),
                        )
                      : const Text(
                          'Call',
                          style: TextStyle(color: textColor),
                        ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined),
            ),
            _currentIndex == 2
                ? const Text('')
                : IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: body[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          fixedColor: Colors.lightGreen,
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Chats',
              icon: Icon(Icons.chat),
            ),
            BottomNavigationBarItem(
              label: 'Updates',
              icon: Icon(Icons.update),
            ),
            BottomNavigationBarItem(
              label: 'Communities',
              icon: Icon(Icons.people),
            ),
            BottomNavigationBarItem(
              label: 'Calls',
              icon: Icon(Icons.call),
            ),
          ],
        ),
      ),
    );
  }
}
