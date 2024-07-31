import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() => runApp(Home());


class Home extends StatelessWidget {
  get raisedButtonStyle => null;
  void buttonClicked() {
    print("Button clicked!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My first flutter App",
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
          Expanded(child: Image.asset("assets/profile.png") ,),
          Container(
              padding: EdgeInsets.all(10.0),
              color: const Color.fromRGBO(3, 169, 244, 1),
              child: Text("")),
            // Image.asset('assets/doc4.png'),
            Image.network('https://i.pinimg.com/736x/a9/2d/db/a92ddbfe2db718633e9db75dc4c8a895.jpg'),  
        ElevatedButton(
              onPressed: () {
               Navigator.pushNamed(context, '/gallery');
              },
              child: Text("Go to Gallery", style:(TextStyle(fontFamily:'Montserrat',fontWeight: FontWeight.bold))
              )),
          
        ],
        
        )
      ),
    );
  }
}
