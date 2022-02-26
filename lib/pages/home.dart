import 'package:flutter/material.dart';
import 'body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      // ignore: prefer_const_constructors
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.search,
            color: Color(0xFF535353),
          ),
          // By default our  icon color is white
          color: const Color(0xFF535353),

          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.shopping_cart,
            // By default our  icon color is white
            color: Color(0xFF535353),
          ),
          onPressed: () {},
        ),
        const SizedBox(width: 20.0 / 2)
      ],
    );
  }
}
