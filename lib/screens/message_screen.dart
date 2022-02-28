import 'package:app_chat/widgets/message.dart';
import 'package:app_chat/widgets/new_message.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  static const routeName = 'message-screen';
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        leadingWidth: 40,
        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            InkWell(
              // radius: 30,
              // borderRadius: BorderRadius.circular(20),
              onTap: () {},
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://kenh14cdn.com/thumb_w/660/2020/5/28/0-1590653959375414280410.jpg'),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: const Text(
                'Nguyễn Bảo Trung',
                overflow: TextOverflow.clip,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: Icon(Icons.phone),
          ),
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: Icon(Icons.info_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Message()),
          NewMessage(),
        ],
      ),
    );
  }
}
