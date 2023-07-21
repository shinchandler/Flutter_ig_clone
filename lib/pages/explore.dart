import 'package:flutter/material.dart';

import '../components/explore_grid.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Container(
                      margin: const EdgeInsets.only(top: 50,bottom: 30),
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide: BorderSide(
                              color: Colors.white
                            )
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                              borderSide: BorderSide(
                                color: Colors.white,
                            )
                          ),
                          fillColor: Colors.grey[200],
                          filled: true,
                          hintText: 'Search',
                          hintStyle: const TextStyle(color: Colors.grey, height: 2.9),
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.grey,
                          ),
                          iconColor: Colors.grey,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
        ),
        body: const ExploreGrid());
  }
}
