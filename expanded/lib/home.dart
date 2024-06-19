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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //other options are MainAxisAlignment.start, MainAxisAlignment.end, MainAxisAlignment.spaceAround, MainAxisAlignment.spaceBetween, play around with them understand what they do
        crossAxisAlignment: CrossAxisAlignment.center,
        //other options are CrossAxisAlignment.start, CrossAxisAlignment.end, CrossAxisAlignment.center, play around with them understand what they do
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Image.asset('assets/image.jpg')),
          Expanded(child: Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.red,
            child: Text('One'),
          ),
          ),
          Expanded(child: Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.green,
            child: Text('Two'),
          ),
          ),
          Expanded(child: Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.blue,
            child: Text('Three'),
          ),
          ),
        ],

      ),
      //columns are stacked vertically unlike rows, which are stacked horizontally but the basic things are the same
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