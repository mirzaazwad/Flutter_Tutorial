import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Playwright"
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 50.0),
              margin: EdgeInsets.all(30.0),
              color: Colors.grey[400],
              child: Text('Hello World!')
          ),
          const Padding(padding: EdgeInsets.all(20.0),
              child: Text('Hello World!')
          ),
        ],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Button clicked");
        },
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.blueAccent,

      ),
    );
  }
}