import 'package:flutter/material.dart';

import '../utils/template.dart';

class FifthPost extends StatefulWidget {
  const FifthPost({Key? key}) : super(key: key);

  @override
  State<FifthPost> createState() => _FifthPostState();
}

class _FifthPostState extends State<FifthPost> {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'grand_fox',
      videoDescription: 'Tried this new challenge, going with the trend',
      hashtags: ' #poochallenge',
      numberOfLikes: '1.5M',
      numberOfComments: '2990',
      numberOfShares: '943',
      userPost: Container(
        color: Colors.pinkAccent,
      ),
    );
  }
}
