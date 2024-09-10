// ignore_for_file: prefer_const_constructors, unused_field

import 'package:flutter/material.dart';
import 'package:whatsappclone/colors.dart';
import 'package:whatsappclone/components/chatInterface.dart';
import 'package:whatsappclone/components/contactList.dart';
import 'package:whatsappclone/components/webChatInterface.dart';
import 'package:whatsappclone/models/chatModel.dart';
class WebScreenLayout extends StatelessWidget {
  final ChatModel _chatModel = ChatModel();
  WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                  color: appBarColor,
                ),
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.menu, size: 22), color: Colors.grey.shade600),
                        IconButton(onPressed: () {}, icon: Icon(Icons.chat_bubble_outline, size: 22), color: Colors.grey.shade600),
                        IconButton(onPressed: () {}, icon: Icon(Icons.call_outlined, size: 22), color: Colors.grey.shade600),
                        IconButton(onPressed: () {}, icon: Icon(Icons.face_rounded, size: 22), color: Colors.grey.shade600),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.star_outline_outlined, size: 22), color: Colors.grey.shade600),
                        IconButton(onPressed: () {}, icon: Icon(Icons.archive_outlined, size: 22), color: Colors.grey.shade600),
                        IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined, size: 22), color: Colors.grey.shade600),
                        IconButton(onPressed: () {}, icon: Icon(Icons.person_outline, size: 22), color: Colors.grey.shade600),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: 440,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              child: Column(
                children: [
                  AppBar(
                    centerTitle: false,
                    title: Text("Chats", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
                    actions: [
                      Icon(Icons.edit_note_outlined),
                      SizedBox(width: 10),
                      Icon(Icons.menu)
                    ],
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 36,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search or start a new chat",
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.grey.shade700
                          ),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.grey.shade700
                          ),
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          ContactList(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          webChatInterface(image : ChatModel().info[0]["image"].toString(), name: "Rivaan Ranawat"),
        ],
      ),
    );
  }
}