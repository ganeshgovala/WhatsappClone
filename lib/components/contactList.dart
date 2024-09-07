import 'package:flutter/material.dart';
import 'package:whatsappclone/components/chatInterface.dart';
import 'package:whatsappclone/models/chatModel.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context,) {
    return Expanded(
      child: ListView.builder(
        itemCount: ChatModel().info.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatInterface(image : ChatModel().info[index]["profilePic"].toString())));
            },
            child: ListTile(
              title: Text(ChatModel().info[index]["name"].toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),),
              subtitle: Text(ChatModel().info[index]["message"].toString(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200, color: Colors.grey),),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(ChatModel().info[index]["profilePic"].toString()),
              ),
              trailing: Text(
                ChatModel().info[index]["time"].toString(),
                style: TextStyle(fontSize: 12),
              ),
            ),
          );
        }
      ),
    );
  }
}