import 'package:flutter/material.dart';

import 'home/MyApp.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class TEF extends StatelessWidget {
  const TEF({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Image.asset('/images/egypt.png'),
    );
  }
}
// class Mymain extends StatelessWidget {
//   const Mymain({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyApp(),
//       // initialRoute: MyApp.routeName,
//       // routes: {
//       //   MyApp.routeName: (context) =>  const MyApp(),
//       //   PlayerScreenDetails.routeName: (context) =>  PlayerScreenDetails(),
//       // },
//     );
//   }
// }
