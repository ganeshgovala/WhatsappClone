import 'package:flutter/material.dart';
import 'package:whatsappclone/models/chatModel.dart';

class MessagesList extends StatefulWidget {
  final ChatModel _chatModel = ChatModel();
  MessagesList({super.key});

  @override
  State<MessagesList> createState() => _MessagesListState();
}

class _MessagesListState extends State<MessagesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {

      }
    );
  }
}