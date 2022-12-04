import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Widget"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              name: "Un hermoso paisaje",
              imageUrl:
                  "https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg",
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  "https://media-gadventures.global.ssl.fastly.net/media-server/dynamic/blogs/posts/daniels/2015/04/9-iceland_northern_lights_landscape_arctic_adventures_elli_thor_magnusson.jpg",
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl:
                  "https://www.popphoto.com/uploads/2022/08/19/stability-ai-landscape.jpg?auto=webp&width=1440&height=575.859375",
            ),
            SizedBox(
              height: 100,
            )
          ],
        ));
  }
}
