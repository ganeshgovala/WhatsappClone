import 'package:flutter/material.dart';
import 'package:whatsappclone/colors.dart';
import 'package:whatsappclone/models/chatModel.dart';

class webChatInterface extends StatefulWidget {
  final String image;
  final String name;
  webChatInterface({
    required this.image,
    required this.name,
    super.key
  });

  @override
  State<webChatInterface> createState() => _webChatInterfaceState();
}

class _webChatInterfaceState extends State<webChatInterface> {
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
                        SizedBox(width: 13),
                        Text(widget.name, style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),),
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
              ),
              Expanded(
                child: ListView.builder(
                 itemCount: ChatModel().messages.length,
                 itemBuilder: (context, index) {
                 return Container( 
                     margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                     alignment: ChatModel().messages[index]["isMe"] as bool ? Alignment(1, 1) : Alignment(-1,-1),
                     width: MediaQuery.of(context).size.width / 1.1,
                     child: MessageBuilder(ChatModel().messages[index]["text"].toString(), 
                                           ChatModel().messages[index]["time"].toString(),
                                           ChatModel().messages[index]["isMe"] as bool),
                   );
                 }
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
      ),
    );
  }

  MessageBuilder(String message, String time, bool isMe) {
    return IntrinsicWidth(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 500,
        ),
        decoration: BoxDecoration(
          color: isMe 
                 ? const Color.fromARGB(255, 0, 88, 59)
                 : const Color.fromARGB(255, 46, 46, 46),
          borderRadius: isMe 
                        ? BorderRadius.only(topLeft: Radius.circular(7), bottomRight: Radius.circular(7), bottomLeft: Radius.circular(7))
                        : BorderRadius.only(topRight: Radius.circular(7), bottomRight: Radius.circular(7), bottomLeft: Radius.circular(7)),
        ),
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        child: Container(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 56.0 ,bottom: 4),
                child: Text(
                  message, 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                ),),
              ),
              SizedBox(width: 5),
              Positioned(
                bottom: 0,
                right: 12,
                child: Text(time, style: TextStyle(
                  color: Colors.white70,
                  fontSize: 9,
                  fontWeight: FontWeight.w100,
                ),) 
              ),
              isMe ? Positioned(
                bottom: 0,
                right: 0,
                child: Icon(Icons.check, size: 10, color: Colors.white70)
              ) :
              Container()
            ],
          ),
        ),
      ),
    );
  }
}