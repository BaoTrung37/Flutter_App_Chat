import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ChatAvatar extends StatelessWidget {
  const ChatAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
    );
  }
}
