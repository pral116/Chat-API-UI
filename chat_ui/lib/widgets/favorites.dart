import 'package:flutter/material.dart';
import '../models/message_model.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Favorites',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  letterSpacing: 1.5,
                  color: Colors.black38,
                ),
              ),

              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz, color: Colors.black38,),),
            ],
          ),
        ),

        Container(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
              itemBuilder: (context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(favorites[index].imageUrl),
                      ),

                      Text(favorites[index].name,
                        style: const TextStyle(
                            fontSize: 15,
                            letterSpacing: 1.5
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
