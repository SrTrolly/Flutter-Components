import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    "Megaman",
    "Metal Gear",
    "Super Smash",
    "Final Fantasy"
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lisview Tipo 2"),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            leading: const Icon(
              Icons.access_time,
              color: Colors.indigo,
            ),
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              final game = options[index];
              print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
