import 'package:chat_ui/widgets/chats.dart';
import 'package:chat_ui/widgets/favorites.dart';
import 'package:flutter/material.dart';
import '../models/message_model.dart';
import '../widgets/categories.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        // backgroundColor: Theme.of(context).primaryColor,
        backgroundColor: Colors.transparent,
        title: const Text('Chats',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        ),

        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),

        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.black,
              iconSize: 30,
          ),
        ],
        elevation: 0,
      ),

      body: Column(
        children: [
          const Categories(),
          
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
              ),
              child: Column(
                children: const [
                  Favorites(),

                  Chats(),

                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
