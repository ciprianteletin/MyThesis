import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(
            "assets/Logo_Header.png",
            width: 200,
            height: 70.0,
          ),
          const CircleAvatar(
            radius: 25.0,
            backgroundImage: AssetImage("assets/avatars/Avatar 1.jpg"),
          ),
        ],
      ),
    );
  }
}
