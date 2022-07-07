import 'package:flutter/material.dart';
import 'package:tiktok/posts/ffpost.dart';
import 'package:tiktok/posts/fpost.dart';
import 'package:tiktok/posts/frpost.dart';
import 'package:tiktok/posts/spost.dart';
import 'package:tiktok/posts/tpost.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: const [
          FirstPost(),
          SecondPost(),
          ThirdPost(),
          FourthPost(),
          FifthPost(),
        ],
      ),
    );
  }
}


