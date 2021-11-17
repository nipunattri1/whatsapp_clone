import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            "https://picsum.photos/250?image=$index",
          ),
        ),
        title: const Text('Name'),
        subtitle: Text('October $index 2021'),
        trailing: Icon(
          (index % 3 == 0) ? Icons.call : Icons.video_call,
          color: const Color(0xff128c7e),
        ),
      );
    });
  }
}
