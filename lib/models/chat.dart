import 'dart:io';

class Chat {
  final String name;
  final String lastMessage;
  final File image;
  final DateTime time;
  final bool isActive;
  Chat({
    required this.name,
    required this.lastMessage,
    required this.image,
    required this.time,
    required this.isActive,
  });
}
