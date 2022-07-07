import 'package:flutter/material.dart';

import '../utils/template.dart';

class SecondPost extends StatefulWidget {
  const SecondPost({Key? key}) : super(key: key);

  @override
  State<SecondPost> createState() => _SecondPostState();
}

class _SecondPostState extends State<SecondPost> {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'helenbox',
      videoDescription: 'Hunting Treasure Box',
      hashtags: ' #hunting',
      numberOfLikes: '59K',
      numberOfComments: '299',
      numberOfShares: '165',
      userPost: Container(
        color: Colors.blueAccent,
      ),
    );
  }
}
