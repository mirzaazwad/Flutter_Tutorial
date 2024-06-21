import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter=0;

  void getData() async{
    //simulate network request for a username
    String username=await Future.delayed(Duration(seconds: 3),(){
      return 'yoshi';
    });

    //simulate network request to get bio of the username
    String bio=await Future.delayed(Duration(seconds: 2),(){
      return 'vegan, musician & egg collector';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    print("init state runs");
    super.initState();
    getData();
    print("hey there");
  }

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
