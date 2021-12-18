// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:players_info_app/home/body.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Player infomations"),
      ),
      body: const Home(),
    );
  }
}
