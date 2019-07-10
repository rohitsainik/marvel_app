import 'package:flutter/material.dart';
import 'package:pageapp/ui/trailerdata.dart';


void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      primarySwatch: Colors.red,
    ),
    title: "MarvelApp",
    home: new TheTrailerAnimation(),
  ));
}
