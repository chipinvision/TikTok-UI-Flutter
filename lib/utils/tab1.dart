import 'package:flutter/material.dart';

class ProfileTab1 extends StatelessWidget {
  const ProfileTab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: Colors.greenAccent[200],
            ),
          );
        }
    );
  }
}
