import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          InkWell(
            onTap: () {
              // print('jjoi');
            },
            child: Container(
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
          ),
          Container(
            height: size.height * 0.12,
            decoration: const BoxDecoration(
                // color: Colors.pinkAccent,
                ),
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, i) => (i == 0)
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.grey[200],
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  ),
                                ),
                                Text('Đăng story'),
                              ],
                            ),
                          )
                        : SizedBox(
                            width: 80,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage(
                                        'https://kenh14cdn.com/thumb_w/660/2020/5/28/0-1590653959375414280410.jpg'),
                                  ),
                                  AutoSizeText(
                                    'Nguyễn Bảo Trung',
                                    style: TextStyle(fontSize: 16),
                                    maxLines: 2,
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
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, i) => Text('hih'),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
