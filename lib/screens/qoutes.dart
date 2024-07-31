import 'package:flutter/material.dart';
import 'package:flutter_basics/qoute.dart';

void main() => runApp(Qoutes());

class Qoutes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Qoute>quotes=[
    Qoute(author:'Munyaneza', description:'One step at a time'),
    // Qoute(author:'Kanyana', description:'You reap what you sow'),
    // Qoute(author:'Litha', description:'Bell bell bell'),
    ];
    Widget QouteCards(q){
      return Card(margin:EdgeInsets.all(20.0),
      child:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column
        (crossAxisAlignment:CrossAxisAlignment.stretch,
          children: [Text(
          q.description, 
        style:
        TextStyle(
          fontSize:18.0,
          color:Colors.blueAccent, 
          fontFamily:'Montserrat',
          fontWeight: FontWeight.bold)
        ),
        SizedBox(height:10.0),
        Text(
          q.author, 
        style:TextStyle(
          fontSize:13.0,
          color:Colors.brown, 
          fontFamily:'Montserrat',
          fontWeight: FontWeight.bold)
        ),
       Image.asset("assets/profile.png")
        ],),
      ),);
    }
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Qoutes Page",
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              fontFamily: 'Montserrat'),
        ),
        backgroundColor: Colors.purple,
      ),
      body:

          Column(children: quotes.map((q)=> QouteCards(q)).toList(),),
        
        )
      );
  }
}
