import 'package:flutter/material.dart';

import './message_screen.dart';
import '../widgets/chat_avatar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
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
            const Text(
              'Đoạn chat',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            splashRadius: 20,
            padding: const EdgeInsets.all(0),
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              color: Colors.black,
            ),
            focusColor: Colors.pink,
          ),
        ],
      ),
      body: InkWell(
        onTap: () {
          print('avatar');
        },
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: size.height * 0.06,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                onPressed: null,
                icon: const Icon(Icons.search),
                label: const Text(
                  'Tìm kiếm',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Container(
              height: size.height * 0.12,
              decoration: const BoxDecoration(
                  // color: Colors.pinkAccent,
                  ),
              child: ChatAvatar(),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (ctx, i) => InkWell(
                  onTap: () {
                    // print('$i');
                    Navigator.of(context).pushNamed(MessageScreen.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              'https://kenh14cdn.com/thumb_w/660/2020/5/28/0-1590653959375414280410.jpg'),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Message hihihihihhihiiihhh hhhhhh hh hhhhhh hhhhhhhh',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Icon(
                          Icons.check_circle,
                          color: Colors.grey,
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage(
                              'https://kenh14cdn.com/thumb_w/660/2020/5/28/0-1590653959375414280410.jpg'),
                        ),
                      ],
                    ),
                  ),
                ),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
