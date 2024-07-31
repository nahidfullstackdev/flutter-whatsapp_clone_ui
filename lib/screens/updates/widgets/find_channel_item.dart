import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/widgets/colors.dart';

class FindChannelItem extends StatelessWidget {
  const FindChannelItem(
      {super.key, required this.image, required this.channelName});

  final String image;
  final String channelName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        width: 150,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                strokeAlign: BorderSide.strokeAlignOutside,
                color: const Color.fromARGB(80, 255, 255, 255))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // channel photo
            CircleAvatar(
              foregroundImage: NetworkImage(image),
              radius: 30,
            ),

            const SizedBox(
              height: 16,
            ),

            // channel name

            Text(
              channelName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: textColor, fontSize: 12, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),

            // follow button

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(61, 129, 199, 132),
              ),
              child: const Text(
                'Follow',
                style: TextStyle(
                  color: textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
