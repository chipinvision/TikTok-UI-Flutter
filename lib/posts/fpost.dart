import 'package:flutter/material.dart';

import '../utils/template.dart';

class FirstPost extends StatefulWidget {
  const FirstPost({Key? key}) : super(key: key);

  @override
  State<FirstPost> createState() => _FirstPostState();
}

class _FirstPostState extends State<FirstPost> {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'invisionchip',
      videoDescription: 'Swipe to Action Button using Flutter',
      hashtags: ' #flutter',
      numberOfLikes: '1.2M',
      numberOfComments: '1232',
      numberOfShares: '122',
      userPost: Container(
        color: Colors.deepOrangeAccent,
      ),
    );
  }
}
