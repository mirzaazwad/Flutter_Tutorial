import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      data = data.isNotEmpty?data:ModalRoute.of(context)!.settings.arguments as Map;
    }
    String bgImage=data['isDaytime']?'assets/images/wallpaper/daytime.jpg':'assets/images/wallpaper/nighttime.jpg';

    return Scaffold(
      backgroundColor: data['isDaytime']?Colors.blue[900]:Colors.grey[850],
      body: Container(
        decoration: BoxDecoration(
          image:DecorationImage(
            image:AssetImage(bgImage),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
            padding: EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
          children: <Widget>[
            TextButton.icon(
              onPressed: () async {
                dynamic result=await Navigator.pushNamed(context, '/location');
                setState(() {
                  data={
                    'location':result['location'],
                    'flag':result['flag'],
                    'time':result['time'],
                    'isDaytime':result['isDaytime'],
                  };
                });
              },
              icon: Icon(Icons.edit_location,color: Colors.white,),
              label: Text('Edit Location',style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  data['location'].toString(),
                  style: TextStyle(
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Text(
              data['time'].toString(),
              style: TextStyle(
                fontSize: 66.0,
                color: Colors.white,
              ),
            )
          ],
        )),
      ),
    );
  }
}
