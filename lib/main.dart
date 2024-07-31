import 'package:flutter/material.dart';
import 'package:whatsapp_clone/router.dart';
import 'package:whatsapp_clone/screens/mobile_screen.dart';
import 'package:whatsapp_clone/screens/web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp UI',
      theme: ThemeData.dark(),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: screenSize.width < 700 ? const MobileScreen() : const WebScreen(),
    );
  }
}
