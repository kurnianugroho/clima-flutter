import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Get the current location
            getCurrentLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }

  void getCurrentLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print('lat: ' + location.getLatitude().toString());
    print('long: ' + location.getLongitude().toString());
  }
}
