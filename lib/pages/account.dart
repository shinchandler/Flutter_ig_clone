import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.lock_outlined,
                      size: 20,
                    ),
                    const Text(
                      ' you_aint_celeb_ ',
                      style: TextStyle(fontSize: 20),
                    ),
                    DropdownButton(
                      items: List.empty(),
                      onChanged: (value) {},
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.add_box_outlined,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.menu,
                      size: 30,
                    )
                  ],
                )
              ],
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Pic and stats
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 30, 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 40,
                    ),
                    Column(
                      children: [
                        Text(
                          '12',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '192',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '136',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //bio
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 5, 10, 10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('shinchandler'),
                  Text('MIT, Pune🧳 \'24 \n.'),
                  Text('⨺ Let the birds fly in the open air 🕊\nIf they are yours they\'ll come back ⨺'),
                ]),
              ),

              //Edit and Share profile
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 30,
                      width: 170,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey[350]),
                      child: const Center(
                          child: Text(
                        'Edit profile',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ))),
                  Container(
                      height: 30,
                      width: 170,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey[350]),
                      child: const Center(
                          child: Text(
                        'Share profile',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ))),
                  Container(height: 30, width: 40, decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey[350]), child: const Center(child: Icon(Icons.person_add_outlined)))
                ],
              ),

              //highlights
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 25, 10, 15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.grey[300],
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'uff 💕',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.grey[300],
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'cuties 🐾',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.grey[300],
                            child: const Icon(
                              Icons.add,
                              size: 35,
                            )),
                        const SizedBox(height: 5),
                        const Text(
                          'New',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              //posts
              const TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.grid_on),
                ),
                Tab(
                  icon: Icon(Icons.movie_filter_outlined),
                ),
                Tab(
                  icon: Icon(Icons.assignment_ind_outlined),
                ),
              ]),
              Expanded(
                  child: TabBarView(children: [
                GridView.builder(
                  itemCount: 50,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        color: Colors.deepPurple[200],
                        height: 10,
                        width: 10,
                      ),
                    );
                  },
                ),
                GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        color: Colors.green[200],
                        height: 10,
                        width: 10,
                      ),
                    );
                  },
                ),
                GridView.builder(
                  itemCount: 5,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2),
                      child: Container(
                        color: Colors.pink[200],
                        height: 10,
                        width: 10,
                      ),
                    );
                  },
                ),
              ]))
            ],
          )),
    );
  }
}
