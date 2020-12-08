import 'package:flutter/material.dart';
import 'package:fronttemplate/src/tabs/tabs.dart';
// ignore: unused_import
import 'pages/TelaInicial.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplicativo Flutter",
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Tabs(),

    );
  }
}