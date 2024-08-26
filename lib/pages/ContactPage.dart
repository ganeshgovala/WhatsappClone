// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:whatsappclone/colors.dart';
import 'package:whatsappclone/components/contactTile.dart';
import 'package:whatsappclone/models/callModel.dart';

class ContactPage extends StatelessWidget {
  final CallModel _callModel = CallModel();
  ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only( top: 16.0, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Calls", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                )),
                Row(
                  children: [
                    Icon(Icons.camera_alt_outlined, size: 22),
                    SizedBox(width: 14),
                    Icon(Icons.search_outlined, size: 22),
                    SizedBox(width: 15),
                    Icon(Icons.more_vert, size: 22),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Favorites", style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    )),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: tabColor,
                          ),
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.favorite,size: 18, color: backgroundColor),
                        ),
                        SizedBox(width: 20),
                        Text("Add to Favorites", style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w200,
                        )),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text("Recent", style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                    )),
                    Container(
                      height: MediaQuery.of(context).size.height / 1.02,
                      child: ListView.builder(
                        itemCount: _callModel.contactDetails.length,
                        itemBuilder: (context, index) {
                          return ContactTile(
                            name: _callModel.contactDetails[index]["name"], 
                            type: _callModel.contactDetails[index]["type"],
                            time: _callModel.contactDetails[index]["time"],
                          );
                        }
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}