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
      body: const Center(
        child: Text("Hello World", style: TextStyle(fontSize: 30.0),
        ),
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