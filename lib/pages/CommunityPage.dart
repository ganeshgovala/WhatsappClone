import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Communities", style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),),
                Row(children: [
                  Icon(Icons.camera_alt_outlined),
                  SizedBox(width: 10),
                  Icon(Icons.more_vert_outlined),
                ],)
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}