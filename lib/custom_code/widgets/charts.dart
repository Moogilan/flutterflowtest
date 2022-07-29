// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:syncfusion_flutter_charts/charts.dart';

class Charts extends StatefulWidget {
  const Charts({
    Key key,
    this.width,
    this.height,
    this.chartTitle,
    this.legend,
    this.backgroundColor,
    this.titleColor,
    this.data,
    this.data1,
    this.data2,
    this.data3,
    this.data4,
  }) : super(key: key);

  final double width;
  final double height;
  final String chartTitle;
  final bool legend;
  final Color backgroundColor;
  final Color titleColor;
  final double data;
  final double data1;
  final double data2;
  final double data3;
  final double data4;

  @override
  _ChartsState createState() => _ChartsState();
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

class _ChartsState extends State<Charts> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SfCartesianChart(
            title: ChartTitle(text: widget.chartTitle),
            legend: Legend(isVisible: true),
            backgroundColor: widget.backgroundColor,
            primaryXAxis: CategoryAxis(),
            series: <LineSeries<SalesData, String>>[
          LineSeries<SalesData, String>(
              dataSource: <SalesData>[
                SalesData('Jan', widget.data),
                SalesData('Feb', widget.data1),
                SalesData('Mar', widget.data2),
                SalesData('Apr', widget.data3),
                SalesData('May', widget.data4)
              ],
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales,
              dataLabelSettings: DataLabelSettings(isVisible: true))
        ]));
  }
}
