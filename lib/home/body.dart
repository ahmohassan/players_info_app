import 'package:flutter/material.dart';
import 'package:players_info_app/data%20source/player_data.dart';
import 'package:players_info_app/widget/Player_info_widget.dart';
// import '../player model/player.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (ctx, index) {
          return PlayerInfo(player: Players[index]);
      },
      itemCount: Players.length,
    );
  }
}
