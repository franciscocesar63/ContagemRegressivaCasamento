import 'package:flutter/material.dart';

class PageHeart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Sobre Nós"),
      ),
      body: _body(),
    );
  }
}

_body() {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Image.asset(
            "assets/img/pp.jpg",
          ),
        ),
      ),
      Text("Casal top"),
    ],
  );
}
