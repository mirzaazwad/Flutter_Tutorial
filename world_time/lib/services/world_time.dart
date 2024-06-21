import 'package:http/http.dart';
import 'dart:convert';

import 'package:intl/intl.dart';


class WorldTime{
  String? location;
  String? time;
  String? flag;
  String? url;
  bool isDaytime=false;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async{
    try{
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      String datetime=data['datetime'];
      String offset=data['utc_offset'];
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset.substring(1,3)), minutes: int.parse(offset.substring(4,6))));
      time = DateFormat.jm().format(now);
      isDaytime=now.hour>6 && now.hour<20?true:false;
    }
    catch (e){
      print('caught error: $e');
      time='could not get time data';
    }

  }
}