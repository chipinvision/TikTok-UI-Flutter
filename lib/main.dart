////////////////////////////////////////////////////////
//      Instagram: @invisionchip
//      Github: chipinvision
//      LIKE  -  SHARE  -  FOLLOW
////////////////////////////////////////////////////////
import 'package:flutter/material.dart';
import 'package:tiktok/screens/create.dart';
import 'package:tiktok/screens/home.dart';
import 'package:tiktok/screens/inbox.dart';
import 'package:tiktok/screens/profile.dart';
import 'package:tiktok/screens/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok',
      theme: ThemeData(
        primaryColor: Colors.white,
        brightness: Brightness.dark
      ),
      home: const TikTok(),
    );
  }
}

class TikTok extends StatefulWidget {
  const TikTok({Key? key}) : super(key: key);

  @override
  State<TikTok> createState() => _TikTokState();
}

class _TikTokState extends State<TikTok> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  final List<Widget> screens = const [
    HomeScreen(),
    SearchScreen(),
    CreateScreen(),
    InboxScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_rounded), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}