import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(location: 'Berlin', flag: 'de.png', url: 'Europe/Berlin'),
    WorldTime(location: 'London', flag: 'gb.png', url: 'Europe/London'),
    WorldTime(location: 'Athens', flag: 'gr.png', url: 'Europe/Athens'),
    WorldTime(location: 'Cairo', flag: 'eg.png', url: 'Africa/Cairo'),
    WorldTime(location: 'Nairobi', flag: 'kn.png', url: 'Africa/Nairobi'),
    WorldTime(location: 'Chicago', flag: 'us.png', url: 'America/Chicago'),
    WorldTime(location: 'New York', flag: 'us.png', url: 'America/New_York'),
    WorldTime(location: 'Seoul', flag: 'sk.png', url: 'Asia/Seoul'),
    WorldTime(location: 'Jakarta', flag: 'id.png', url: 'Asia/Jakarta'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });
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
        child:Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: locations.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  onTap: (){
                    updateTime(index);
                  },
                  title: Text(locations[index].location.toString()),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/flag/${locations[index].flag}'),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
