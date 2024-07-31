import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/widgets/colors.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      decoration: const BoxDecoration(
        color: greyColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 40,
                  child: Image.asset('assets/md.nahid.jpg'),
                ),
                const Positioned(
                  child: Icon(Icons.plus_one_sharp),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
