import 'package:flutter/material.dart';

import '../models/message_model.dart';

class MessageContainer extends StatefulWidget {
  const MessageContainer({Key? key}) : super(key: key);

  @override
  State<MessageContainer> createState() => _MessageContainerState();
}

class _MessageContainerState extends State<MessageContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Colors.white60,
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: ListView.builder(
                reverse: true,
                padding: const EdgeInsets.only(top: 5),
                itemCount: message.length,
                itemBuilder: (context, int index){
                  final Message messages = message[index];
                  final bool isMe = messages.sender.id == currUser.id;
                  return Padding(
                    padding: messages.sender.id == currUser.id ?
                    const EdgeInsets.only(top: 10, bottom: 5, left: 80, right: 5) :
                    const EdgeInsets.only(top: 10, bottom: 5, left: 5, right: 80),
                    child: Column(
                      crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                      children: [
                        Text(messages.time,
                          style: const TextStyle(color: Colors.grey),
                          textAlign: TextAlign.center,

                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          width: MediaQuery.of(context).size.width * 0.7,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: isMe ? Colors.blue : Colors.blueGrey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(messages.text,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),

        Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your message...',
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const
                Icon(Icons.image),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
