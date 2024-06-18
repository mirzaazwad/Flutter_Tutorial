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
              TextButton(onPressed: (){
                print("Flat/Text Button clicked");
              }, child: Text("Text Button"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Playwright",
                    color: Colors.blueAccent
                ),
              ),
              ),
              OutlinedButton(onPressed: (){}, child:
                Text("Outlined Button"),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.mail)),
              ElevatedButton(
                onPressed: () {
                  print("Raised/Elevated clicked");
                },
                child: Text('Elevated Button', style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Playwright",
                    color: Colors.white
                )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shadowColor: Colors.cyan,
                  elevation: 5,
                  textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Playwright",
                      color: Colors.white
                  ),
                ),
              ),

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