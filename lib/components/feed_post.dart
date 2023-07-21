import 'package:flutter/material.dart';

class FeedPost extends StatelessWidget {
  const FeedPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 670,
      width: 800,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // profile
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('primebuzzmedia'),
                  ],
                ),
                Icon(Icons.more_vert)
              ],
            ),
          ),

          //post
          Container(
            height: 400,
            color: Colors.grey,
          ),

          //like ,comment share, save
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      size: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Icon(
                        Icons.chat_bubble_outline_rounded,
                        size: 30,
                      ),
                    ),
                    Icon(
                      Icons.telegram_outlined,
                      size: 30,
                    )
                  ],
                ),
                Icon(
                  Icons.bookmark_border,
                  size: 30,
                )
              ],
            ),
          ),

          // liked by
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 5),
            child: Row(
              children: [
                Icon(Icons.join_left_rounded),
                Text('Liked by '),
                Text(
                  'Zuckerberg ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('and '),
                Text(
                  '532 others ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          //caption
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 5),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'primebuzzmedia ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: '7 ways to to grow your business in 2023 #socialmediamarketing')
                ],
              ),
            ),
          ),

          //view all comments
          const Padding(
            padding: EdgeInsets.fromLTRB(15,2, 15, 5),
                child: Text(
                  'View all 176 comments',
                  style: TextStyle(color: Colors.grey),
                ),
          ),
        
          //add a comment
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 2, 15, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.grey,radius: 15,),
                    SizedBox(width: 10,),
                    Text('Add a comment ...')
                  ],
                ),
                Row(
                  children: [
                    Text('❤  🙌  '),
                    CircleAvatar(radius: 10,child: Icon(Icons.add))
                  ],
                ),                                
              ],
            ),
          ),

          //upload time
          Padding(
            padding: const EdgeInsets.fromLTRB(15,0, 15, 5),
                child: RichText(text: const TextSpan(style: TextStyle(color: Colors.grey,fontSize: 12),children: [
                  TextSpan(text:'9 hours ago • ',),
                  TextSpan(text: 'See translation',style: TextStyle(color: Colors.black))
                ])),
          ),
        ],
      ),
    );
  }
}
