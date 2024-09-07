import 'package:flutter/material.dart';
import 'package:whatsappclone/colors.dart';

class ChatInterface extends StatefulWidget {
  final String image;
  ChatInterface({
    required this.image,
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
            image: AssetImage('lib/assets/images/Wallpaper.png'),
            fit: BoxFit.cover,
          )
        ),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              color: backgroundColor,
              padding: MediaQuery.of(context).size.width > 900 
                       ? EdgeInsets.only(top: 30,bottom: 10,left: 16, right: 16)
                       : EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      MediaQuery.of(context).size.width < 900 
                      ? GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios_new_rounded, size: 20),
                      ) 
                      : Container(), 
                      SizedBox(width: 15),
                      Container(
                        height: 30,
                        width: 30,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(widget.image) 
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.video_call_outlined, size: 28,),),
                      IconButton(onPressed: () {}, icon: Icon(Icons.call_outlined)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
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