import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    "Megaman",
    "Metal Gear",
    "Super Smash",
    "Final Fantasy"
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lisview Tipo 1"),
        ),
        body: ListView(
          children: [
            ...options
                .map((juego) => ListTile(
                      leading: const Icon(Icons.access_time),
                      title: Text(juego),
                      trailing: const Icon(Icons.arrow_right),
                    ))
                .toList(),

            // ListTile(
            //   leading: Icon(Icons.access_time_rounded),
            //   title: Text("Hola Mundo"),
            // )
          ],
        ));
  }
}
