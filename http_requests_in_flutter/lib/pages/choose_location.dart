import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    print("build runs");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child:Text(counter.toString())
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter+=1;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
