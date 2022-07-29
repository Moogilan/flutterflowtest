// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:flutter_gauge/flutter_gauge.dart';

class Speeed extends StatefulWidget {
  const Speeed({
    Key key,
    this.width,
    this.height,
    this.speed,
  }) : super(key: key);

  final double width;
  final double height;
  final double speed;

  @override
  _SpeeedState createState() => _SpeeedState();
}

class _SpeeedState extends State<Speeed> {
  @override
  Widget build(BuildContext context) {
    return FlutterGauge(
      handSize: 30,
      width: 200,
      index: widget.speed,
      fontFamily: 'Iran',
      end: 500,
      number: Number.endAndStart,
      secondsMarker: SecondsMarker.minutes,
      isCircle: false,
      counterStyle: TextStyle(
        color: Colors.black,
        fontSize: 25,
      ),
    );
  }
}
