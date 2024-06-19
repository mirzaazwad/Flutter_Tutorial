import 'package:flutter/material.dart';

class IDCard extends StatelessWidget {
  const IDCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Identity Card', style: TextStyle(color: Colors.white, fontFamily: 'Playwright'))
        ),
        backgroundColor: Colors.blue[900]
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/image/propic.png'),
                    radius: 50.0,
                  )
              ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      Container(
                          padding: EdgeInsets.all(10.0),
                          child: Text('John Doe', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontFamily: 'Playwright'))
                      ),
                      Container(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                              children: <Widget>[
                                Icon(Icons.flutter_dash_rounded, color: Colors.blue[900]),
                                Text('Flutter Developer', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'Playwright'))
                              ]
                          )
                      ),
                    ],
                  )),
            ],
          ),
          const SizedBox(height: 20.0),
          Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.phone, color: Colors.blue[900]),
                  Text('+91 1234567890', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'Playwright'))
                ],
              )
          ),
          Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.email, color: Colors.blue[900]),
                  const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text('johndoe@example.com', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'Playwright'))
                  )
                ],
              )
          ),
          SizedBox(height: 100.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                  onPressed: (){},
                  child: Text('Accept',
                      style: TextStyle(fontFamily: 'Playwright',color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[600],
                      shadowColor: Colors.red,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      )
                    )
                  ),
              ElevatedButton(
                  onPressed: (){},
                  child: Text('Reject',
                    style: TextStyle(fontFamily: 'Playwright',color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[600],
                      shadowColor: Colors.red,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      )
                  )
              ),
            ],
          )
        ],
      )
    );
  }
}
