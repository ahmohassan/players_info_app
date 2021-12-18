// ignore_for_file: file_names, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../screens/Player Screen Details/PlayerScreenDetails.dart';
import '../player model/player.dart';

class PlayerInfo extends StatelessWidget {
  const PlayerInfo({required this.player});

  // Property

  final Player player;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          contentPadding: const EdgeInsets.all(18),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return PlayerScreenDetails(player.id);
            }));
          },
          leading: Container(
            // backgroundImage: NetworkImage(player.playerImage),
            // backgroundImage: AssetImage(player.playerImage),
            // radius: 30,
            // child: Image.asset(
            //   player.playerImage,
            //   fit: BoxFit.contain,
            // ),
            width: 50,
            height: 52,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: Image.asset(
              player.playerImage,
              height: 90,
            ),
          ),
          title: LabelAndValue(
            Label: 'Name',
            Valuel: player.name,
          ),
          subtitle: LabelAndValue(Label: 'Age', Valuel: '${player.age}'),
          trailing: Text(player.currentTeam),
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
