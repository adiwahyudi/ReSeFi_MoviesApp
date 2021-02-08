import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movies_app/filmScreen.dart';
import 'package:movies_app/detailFilm.dart';
import 'package:movies_app/detailSerial.dart';
import 'package:movies_app/model/listFilmdanSerial.dart';
import 'package:movies_app/navbar.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serial dan Film',
      theme: ThemeData.dark(),
      home: NavBar(),
    );
  }
}