// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:whatsappclone/components/contactList.dart';
import 'package:whatsappclone/components/inputField.dart';
import 'package:whatsappclone/models/chatModel.dart';

class HomePage extends StatelessWidget {
  ChatModel chatModel = ChatModel();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 16),
          child: Text("WhatsApp", style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500
                  )),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: IconButton(onPressed : () {}, icon : Icon(Icons.camera_alt_outlined)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: IconButton(onPressed: () {}, icon : Icon(Icons.more_vert_outlined)),
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InputField(),
          ),
          ContactList(),
        ],
      )
    );
  }
}