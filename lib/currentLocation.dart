import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({Key? key}) : super(key: key);

  @override
  _CurrentLocationState createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  String latitudeData = "";
  String longitudeData = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentLocation();
  }
  getCurrentLocation() async {
  final geoposition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

  setState(() {
    latitudeData = '${geoposition.latitude}';
    longitudeData = '${geoposition.longitude}';
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('Current Position', style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(latitudeData, style: TextStyle(color: Colors.amberAccent),),
          Text(longitudeData, style: TextStyle(color: Colors.amberAccent),),
        ],
      ),
    );
  }
}
