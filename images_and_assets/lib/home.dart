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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Hello World',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const Image(image: NetworkImage("https://picsum.photos/250?image=9"),
              ),
              const Image(image: AssetImage('assets/image.jpg'),
                width: 250.0,
                height: 250.0,
              ),
              Image.network("https://picsum.photos/250?image=9"),
              Image.asset("assets/image.jpg",
                width: 250.0,
                height: 250.0,)

            ],

          )
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