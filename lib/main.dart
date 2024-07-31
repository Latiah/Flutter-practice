import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/gallery.dart';
import 'package:flutter_basics/screens/loading.dart';
import 'package:flutter_basics/screens/qoutes.dart';
import 'package:flutter_basics/screens/home.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/',
 routes: {
  '/':(context)=>Loading(),
  '/home':(context)=>Home(),
  "/gallery":(context)=>Gallery(),
  "/qoutes":(context)=>Qoutes(),
}));

