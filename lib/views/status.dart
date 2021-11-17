import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Stack(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://picsum.photos/250?image=9',
                ),
              ),
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff128c7e),
                      shape: BoxShape.circle,
                    ),
                    width: 18,
                    height: 18,
                    child: const Center(
                        child: Icon(
                      Icons.add,
                      size: 16,
                      color: Colors.white,
                    )),
                  ),
                ),
                bottom: 0,
                right: 0,
              ),
            ],
          ),
          title: const Text('My Status'),
          subtitle: const Text('Tap to add status update'),
        ),
      ],
    );
  }
}
