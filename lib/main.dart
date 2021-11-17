import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primaryColor: Colors.white,
        // accentColor: Colors.green,
        fontFamily: 'Montserrat',
      ),
      title: 'Material App',
      home: const HomeScreen(),
    );
  }
}
