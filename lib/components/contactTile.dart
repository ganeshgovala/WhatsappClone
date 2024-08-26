// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsappclone/colors.dart';

class ContactTile extends StatelessWidget {
  final String name;
  final String type;
  final double time;
  const ContactTile({
    required this.name,
    required this.type,
    required this.time,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(12),
                child: Text(name[0].toUpperCase(), style: TextStyle(
                  color: Colors.black, 
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                  )),
                  Row(
                    children: [
                      type == "outgoing"
                          ? Icon(Icons.arrow_outward_outlined, color: tabColor, size: 16) 
                          : Transform.rotate(
                              angle: 180 * 3.1415926535897932 / 180,
                              child: Icon(Icons.arrow_outward_outlined, color: tabColor, size: 16)
                            ),
                      SizedBox(width: 6),
                      Text("${time}", style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 13,
                        fontWeight: FontWeight.w200,
                      ),)
                    ],
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.call_outlined, color: Colors.white)
        ],
      ),
    );
  }
}