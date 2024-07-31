import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/widgets/colors.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/screens/updates/widgets/find_channel_item.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Status',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),

              // status row..
              Container(
                width: double.infinity,
                height: 85,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 32, 31, 36),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
                            radius: 30,
                          ),
                          Positioned(
                            bottom: 2,
                            right: .5,
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 10,
                              child: Icon(
                                Icons.add,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Add Status',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Disappears after 24 hours',
                          style: TextStyle(
                              color: greyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              // channels list with explore textbutton

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Channels',
                    style: TextStyle(
                        color: textColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Explore',
                    style: TextStyle(
                        color: tabColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(
                width: double.infinity,
                height: 250,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      channels[index]['channelName'].toString(),
                      style: const TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    subtitle: Text(
                      overflow: TextOverflow.ellipsis,
                      channels[index]['text'].toString(),
                      style: const TextStyle(
                          color: greyColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        channels[index]['profilePic'].toString(),
                      ),
                      radius: 30,
                    ),
                    trailing: Text(
                      channels[index]['time'].toString(),
                      style: const TextStyle(
                          color: greyColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 12),
                    ),
                    onTap: () {},
                  ),
                ),
              ),

              // find channels..

              const SizedBox(
                height: 16,
              ),

              const Text(
                'Find Channels',
                style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),

              // find channel list

              SizedBox(
                height: 200,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: channels.length,
                  itemBuilder: (context, index) => FindChannelItem(
                    image: channels[index]['profilePic'].toString(),
                    channelName: channels[index]['channelName'].toString(),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text(
                  'Explore more',
                  style: TextStyle(color: Colors.black),
                ),
              ),

              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(
          Icons.camera_alt,
          color: backgroundColor,
        ),
      ),
    );
  }
}
