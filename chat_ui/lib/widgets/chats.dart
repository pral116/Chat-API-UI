import 'package:chat_ui/screens/chat_screen.dart';
import 'package:flutter/material.dart';

import '../models/message_model.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),

        child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, int index) {
              final Message chat = chats[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ChatScreen(user: chat.sender,);
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: chat.unread ? Colors.white10 : Colors.white54,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(chat.sender.imageUrl),
                          ),

                          const SizedBox(width: 10,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(chat.sender.name,
                                style: TextStyle(
                                  fontWeight: chat.unread ? FontWeight.bold : FontWeight.w400,
                                  color: Colors.blueGrey,
                                  letterSpacing: 1.5,
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Text(
                                  chat.text,
                                  style: TextStyle(
                                    fontWeight: chat.unread ? FontWeight.bold : FontWeight.w300,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  // maxLines: 2,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(width: 10,),

                          Column(
                            children: [
                              Text(chat.time,
                                style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                              const SizedBox(height: 5,),
                              chat.unread ? const Text('NEW',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ) : const Text(''),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
