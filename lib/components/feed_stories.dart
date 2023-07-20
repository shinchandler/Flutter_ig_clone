import 'package:flutter/material.dart';

class FeedStories extends StatelessWidget {
  //final List _people = ['Elon','Mark','Cilian','Nolan','Patrick',''];
   const FeedStories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      margin: const EdgeInsets.only(top: 25, bottom: 5, right: 15),
      decoration: const BoxDecoration(color: Colors.transparent),
      child: const Column(
        children: [
          CircleAvatar(
            maxRadius: 40,
            backgroundColor: Colors.grey,
          ),
          Text('name')
        ],
      ),
    );
  }
}
