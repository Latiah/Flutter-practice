import 'package:flutter/material.dart';

void main() => runApp(Gallery());

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "My Gallery",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  fontFamily: 'Montserrat'),
            ),
            backgroundColor: Colors.purple,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/profile.png"),
              Expanded(
                child: Image.asset("assets/profile.png"),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/qoutes');
                  },
                  child: Text("Go to Qoutes",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.facebook_sharp,
                    color: Colors.blue,
                  ),
                  Icon(Icons.message, size: 20.0),
                  IconButton(
                      onPressed: () {
                        print("you cliked an icon");
                      },
                      icon: Icon(Icons.alarm_on),
                      color: Colors.lightBlue),
                ],
              ),
            ],
          )),
    );
  }
}
