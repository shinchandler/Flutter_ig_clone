import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const Center(child: Text('Data')),
        bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed, items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: 'Post'),
          BottomNavigationBarItem(icon: Icon(Icons.movie_filter_outlined), label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: 'Account'),
        ]),
      ),
    );
  }
}
