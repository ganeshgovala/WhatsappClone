import 'package:flutter/material.dart';

class ChatInterface extends StatefulWidget {
  const ChatInterface({
    super.key
  });

  @override
  State<ChatInterface> createState() => _ChatInterfaceState();
}

class _ChatInterfaceState extends State<ChatInterface> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/Wallpaper.jpg'),
            fit: BoxFit.cover
          )
        ),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}