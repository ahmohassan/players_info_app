// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:players_info_app/data%20source/player_data.dart';

class PlayerScreenDetails extends StatelessWidget {
  const PlayerScreenDetails(this.id);
  static const routeName = '/PlayerScreenDetails';

  final id;

  @override
  Widget build(BuildContext context) {
    // final plyID = ModalRoute.of(context)?.settings.arguments as String;
    final player = Players.firstWhere((player) => player.id == id,
        orElse: () => throw ('Could not Get this ID'));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Player Detail infomatiom'),
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 0),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0, left: 50, right: 50),
              // child: CircleAvatar(
              //   // backgroundImage: Image.asset(player.playerImage),
              //   radius: 180,
              //   child: Image.asset(player.playerImage),
              // ),
              child: Container(
                // backgroundImage: NetworkImage(player.playerImage),
                // backgroundImage: AssetImage(player.playerImage),
                // radius: 30,
                // child: Image.asset(
                //   player.playerImage,
                //   fit: BoxFit.contain,
                // ),
                width: 0,
                height: 192,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Image.asset(
                  player.playerImage,
                  height: 90,
                ),
              ),
            ),
            ListTile(
              title: LabelAndValue(
                Label: 'Name',
                Valuel: player.name,
              ),
              subtitle: LabelAndValue(Label: 'Age', Valuel: '${player.age}'),
              trailing: CircleAvatar(
                backgroundImage: NetworkImage(player.currentLogo),
              ),
            ),
            ListTile(
              title: LabelAndValue(
                Label: 'Country',
                Valuel: player.cauntryName,
              ),
              subtitle:
                  LabelAndValue(Label: 'Team', Valuel: player.currentTeam),
              trailing: CircleAvatar(
                backgroundImage: NetworkImage(player.cauntryFlag),
              ),
            ),
            ListTile(
              title: LabelAndValue(
                Label: 'Possition',
                Valuel: player.position,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              height: 410,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  player.playerDescription,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            )
          ],
        ));
  }
}

class LabelAndValue extends StatelessWidget {
  const LabelAndValue({
    Key? key,
    required this.Label,
    required this.Valuel,
  });

  final String Label;
  final String Valuel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            Label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Text(
            Valuel,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
