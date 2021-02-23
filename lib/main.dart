import 'package:dias_para_casar/models/drawers.dart';
import 'package:flutter/material.dart';

import 'PageHeart.dart';

void main() {
  runApp(MyApp());
  print(DateTime.now());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Cesinha & Carol"),
      ),
      body: body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PageHeart()),
          );
        },
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.favorite),
      ),
      drawer: drawer(context),
    );
  }
}

body() {
  return Column(
    children: [
      Text(
        "Contagem regressiva para o casamento",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
        ),
      ),
      Divider(),
      Divider(),
      Divider(),
      Divider(),
      Divider(),
      Icon(
        Icons.favorite,
        color: Colors.redAccent,
        size: 75,
      ),
      Divider(),
      Text(
        diferencaDias() + " dias",
        style: TextStyle(color: Colors.blue, fontSize: 50),
      ),
      Divider(),
      Icon(
        Icons.favorite,
        color: Colors.redAccent,
        size: 75,
      ),
      Divider(),
    ],
  );
}

diferencaDias() {
  DateTime dataCasamento = DateTime.parse('2021-06-12');
  Duration diaAtual = DateTime.now().difference(dataCasamento);
  String diferencaDias = (diaAtual.inDays).floor().toString();
  print("aQUIIIIIIIIIIIIIII");
  print(diferencaDias);
  return diferencaDias.split('-')[1];
}
