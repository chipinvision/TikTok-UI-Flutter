import 'package:flutter/material.dart';
import 'package:tiktok/models/inboxModel.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Inbox',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: dummyData.length,
          itemBuilder: (context,i) => Column(
            children: [
              const Divider(height: 10,),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(dummyData[i].avatar),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      dummyData[i].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                subtitle: Container(
                  padding: const EdgeInsets.only(top:5.0),
                  child: Text(
                    dummyData[i].msg,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
