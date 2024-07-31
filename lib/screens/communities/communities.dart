import 'package:flutter/material.dart';

import 'package:whatsapp_clone/common/widgets/colors.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                  color: backgroundColor,
                ),
                child: Stack(
                  children: [
                    Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(Icons.people_rounded)),
                    const Positioned(
                      bottom: 15,
                      right: 15,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 15,
                        child: Icon(
                          Icons.add,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'New community',
                style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )
            ],
          ),
          const SizedBox(
            height: 200,
          ),
          const Center(
            child: Text('No community created yet'),
          ),
        ],
      ),
    );
  }
}
