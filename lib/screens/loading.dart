import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


void main() => runApp(MaterialApp(
  home: Loading(),
  routes: {
    '/home': (context) => Home(),
  },
));

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 8), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    ));
  }
}
