import 'package:flutter/material.dart';

import '../utils/template.dart';

class ThirdPost extends StatefulWidget {
  const ThirdPost({Key? key}) : super(key: key);

  @override
  State<ThirdPost> createState() => _ThirdPostState();
}

class _ThirdPostState extends State<ThirdPost> {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'techvoyager',
      videoDescription: 'Journey to Apple Store Dubai',
      hashtags: ' #apple',
      numberOfLikes: '3k',
      numberOfComments: '179',
      numberOfShares: '105',
      userPost: Container(
        color: Colors.green,
      ),
    );
  }
}

