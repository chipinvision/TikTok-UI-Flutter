import 'package:flutter/material.dart';

import '../utils/template.dart';

class FourthPost extends StatefulWidget {
  const FourthPost({Key? key}) : super(key: key);

  @override
  State<FourthPost> createState() => _FourthPostState();
}

class _FourthPostState extends State<FourthPost> {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'lord.xyz',
      videoDescription: 'Old memories with my love',
      hashtags: ' #love',
      numberOfLikes: '1M',
      numberOfComments: '300',
      numberOfShares: '95',
      userPost: Container(
        color: Colors.redAccent,
      ),
    );
  }
}
