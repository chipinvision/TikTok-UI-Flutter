import 'package:flutter/material.dart';

import '../utils/tab1.dart';
import '../utils/tab2.dart';
import '../utils/tab3.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              'Suresh Mishra',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            centerTitle: true,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              )
            ],
          ),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/72114434?v=4'),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                    '@invisionchip',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: const [
                          Text(
                            '800',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Following',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: const [
                          Text(
                            '195',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: const [
                          Text(
                            '3K',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '  Likes  ',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text('Edit profile',
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.bookmark_border,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                'Passionate rather than Professional',
                style: TextStyle(color: Colors.grey[700]),
              ),
              const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_3x3, color: Colors.black),
                  ),
                  Tab(
                    icon: Icon(Icons.favorite, color: Colors.black),
                  ),
                  Tab(
                    icon: Icon(Icons.lock_outline_rounded, color: Colors.black),
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    ProfileTab1(),
                    ProfileTab2(),
                    ProfileTab3(),
                  ],
                ),
              )
            ],
          ),
      ),
    );
  }
}
