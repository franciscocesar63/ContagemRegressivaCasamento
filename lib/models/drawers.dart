import 'package:dias_para_casar/PageHeart.dart';
import 'package:flutter/material.dart';

import '../main.dart';

drawer(context) {
  return Drawer(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Divider(),
        Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              child: ClipOval(
                child: Image.asset(
                  "assets/img/pp.jpg",
                  width: 270,
                ),
              ),
              backgroundColor: Colors.transparent,
            ),
            Text("       "),
            Divider(),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Carol <3 Cesinha",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ),
          ],
        ),
        Divider(),
        Text(
            "------------------------------------------------------------------------------"),
        Divider(),
        flatButton("Início", Icon(Icons.home),
            MaterialPageRoute(builder: (context) => HomePage()), context),
        flatButton("Sobre Nós", Icon(Icons.favorite, color: Colors.redAccent),
            MaterialPageRoute(builder: (context) => PageHeart()), context),
      ],
    ),
  );
}

flatButton(label, icon, page, context) {
  return FlatButton.icon(
    onPressed: () {
      Navigator.push(
        context,
        page,
      );
    },
    icon: icon,
    label: Text(
      label,
      style: TextStyle(
        color: Color(0xff1b2064),
        fontSize: 20,
      ),
    ),
  );
}
