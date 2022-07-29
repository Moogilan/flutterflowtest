// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:customgauge/customgauge.dart';

class Customgauge extends StatefulWidget {
  const Customgauge({
    Key key,
    this.width,
    this.height,
    this.value,
    this.myText,
  }) : super(key: key);

  final double width;
  final double height;
  final double value;
  final String myText;

  @override
  _CustomgaugeState createState() => _CustomgaugeState();
}

class _CustomgaugeState extends State<Customgauge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomGauge(
        gaugeSize: widget.width,
        segments: [
          GaugeSegment('Low', 20, Colors.red),
          GaugeSegment('Medium', 40, Colors.orange),
          GaugeSegment('High', 40, Colors.green),
        ],
        currentValue: widget.value,
        displayWidget: Text(
          widget.myText,
          style: TextStyle(fontSize: 12, color: Colors.black),
        ),
      ),
    );
  }
}
