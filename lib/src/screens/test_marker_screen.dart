import 'package:flutter/material.dart';
import 'package:maps_app/src/markers/markers.dart';

class TestMarkerScreen extends StatelessWidget {
  const TestMarkerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
        //color: Colors.red,
        width: 350,
        height: 150,
        child: CustomPaint(
          painter: StartMarkerPainter(
            destination: 'Mi Casa',
            minutes: 55,
          ),
        ),
      )),
    );
  }
}
