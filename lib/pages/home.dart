import 'package:flutter/material.dart';
import 'package:ig_clone/components/feed_post.dart';
import 'package:ig_clone/components/feed_stories.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text(
                    'Instagram',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  DropdownButton(icon: const Icon(Icons.keyboard_arrow_down,size: 35,color: Colors.black,),items: List.empty(), onChanged: (value) {
                    
                  },)
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Transform.rotate(
                      angle: 5.7,
                      child: const Icon(
                        Icons.send_rounded,
                        size: 30,
                      ))
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const FeedStories();
                },
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const FeedPost();
                },
              ),
            ),
          ],
        ));
  }
}
