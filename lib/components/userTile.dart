// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UserTile extends StatefulWidget {
  const UserTile({super.key});

  @override
  State<UserTile> createState() => _UserTileState();
}

class _UserTileState extends State<UserTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment(0, 0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 218, 218, 218),
                  borderRadius: BorderRadius.circular(40)
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: Text("A", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black)),
              ),
              SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Code Crafters", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400)),
                  Text("ok", style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w200))
                ],
              ),
            ]
          ),
          Text("9:00 PM", style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w200))
        ],
      ),
    );
  }
}