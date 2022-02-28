import 'package:flutter/material.dart';

class MessageBuddle extends StatelessWidget {
  const MessageBuddle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
              'https://kenh14cdn.com/thumb_w/660/2020/5/28/0-1590653959375414280410.jpg'),
        )
      ],
    );
  }
}
